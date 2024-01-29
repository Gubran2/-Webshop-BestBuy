#!/usr/bin/env python
# -*- coding: utf-8 -*-
import pandas as pd
from os import path
from inspect import currentframe, getfile

import mysql.connector as mysql

MYSQL_USER =  'root' #replace with your user name.
MYSQL_PASS =  'gubran1234G5' #replace with your MySQL server password
MYSQL_DATABASE = 'bestbuy'#replace with your database name

connection = mysql.connect(user=MYSQL_USER,
                           passwd=MYSQL_PASS,
                           database=MYSQL_DATABASE, 
                           host='127.0.0.1')


cnx = connection.cursor(dictionary=True)
''' 
for row in cnx:
    print(row)
connection.close()
'''
cmd_folder = path.realpath(
    path.abspath(path.split(getfile(currentframe()))[0])) + '/'

def get_products_filtered(categories=None):
    """
    Fetches products based on the provided filters.

    :param categories: A dictionary with optional filters (gender, type, subtype, color).
    :return: A list of dictionaries, each representing a product.

    Example of categories:
    {'gender': 'Female', 'type': 'Shirt', 'subtype': 'T-shirt', 'color': 'Red'}
    """

    # Base SQL query
    base_query = "SELECT * FROM products"

    if categories is not None:
        # Extract filter values from the categories dictionary
        gender = categories.get('gender')
        product_type = categories.get('type')
        subtype = categories.get('subtype')
        color = categories.get('color')

        # Construct the SQL query with filters
        query = f"""{base_query}
                    WHERE (@gender IS NULL OR gender = @gender)
                    AND (@type IS NULL OR type = @type)
                    AND (@subtype IS NULL OR subtype = @subtype)
                    AND (@color IS NULL OR color = @color);"""

        # Execute the query with provided filter values
        cnx.execute(query, {'gender': gender, 'type': product_type, 'subtype': subtype, 'color': color})
    else:
        # Execute the base query without filters
        cnx.execute(base_query)

    # Fetch and return the results as a list of dictionaries
    result = [dict(row) for row in cnx]
    return result


def get_products_search(values):
    

    result = []
    conditions = []

    for value in values:
        value = f"%{value}%"
        conditions.append("brand LIKE @brand")

    condition_string = " OR ".join(conditions)
    query = f"SELECT DISTINCT * FROM products WHERE {condition_string}"

    parameter_mapping = [{"brand": value} for value in values]

    for parameters in parameter_mapping:
        cnx.execute(query, parameters)
        result.extend(cnx)

    return result


def get_products_ids(ids):
    
    ids = tuple(ids)
    result = []
    cnx.execute(f'''SELECT * FROM products WHERE id IN {ids}''')
    for row in cnx:
        result.append(row)

    return result



def get_categories():
    

    cnx.execute('''SELECT DISTINCT gender FROM products''')
    genders = [row["gender"] for row in cnx]

    categories = []

    for gender in genders:
        cnx.execute(f'''SELECT DISTINCT type FROM products WHERE gender = "{gender}"''')
        types = [row["type"] for row in cnx]

        children = [{'url': '', 'name': name} for name in types]

        category = {'title': gender, 'children': children}
        categories.append(category)

    return categories


def get_subcategories(gender, category):
    
    cnx.execute(f'''SELECT DISTINCT subtype FROM products WHERE gender = "{gender}" and type = "{category}"''')
    subcategories = [row["subtype"] for row in cnx]

    children = [{'url': '', 'name': subcategory} for subcategory in subcategories]
    result = [{'gender': gender, 'category': category, 'children': children}]

    return result


def write_order(order):
    cnx.execute('''SELECT MAX(orderid) FROM orders''')

    for row in cnx:
        if row['MAX(orderid)'] is not None:
            orderID = row['MAX(orderid)'] + 1
        else:
            orderID = 1

    item_ids = list(map(int, order['items'].strip('[]').split(',')))
    items = [{'id': int(x), 'amount': item_ids.count(x)} for x in list(set(item_ids))]

    firstname, lastname = order['name'].split()
    email = order['email']
    street = order['address']
    zipcode = order['zipcode'].replace(" ", "")
    print(order)
    city = order['city']
    print(city)
    
    required_fields = {
    "firstname": "Beställnings formulär(Namn) saknas. Försök igen...",
    "email": "Beställnings formulär(E-post) saknas. Försök igen...",
    "street": "Beställnings formulär(Address) saknas. Försök igen...",
    "zipcode": "Beställnings formulär(Postnummer) saknas. Försök igen...",
    "city": "Beställnings formulär(Ort) saknas. Försök igen..."
    }

    for field, error_msg in required_fields.items():
        if locals().get(field) is None:
            raise Exception(error_msg)

  
    
    cnx.execute(f'''SELECT customer_id FROM customers WHERE email = "{email}"''')
    customer_id = cnx.fetchone()
    if not customer_id:
        cnx.execute(f'''INSERT INTO customers (firstname, lastname, street, city, zipcode, email) VALUES ("{firstname}", "{lastname}", "{street}", "{city}", "{zipcode}", "{email}")''')
        connection.commit()
        cnx.execute(f'''SELECT customer_id FROM customers WHERE email = "{email}"''')
        customer_id = cnx.fetchone()['customer_id']
        
    # Insert the order
    cnx.execute(f'''INSERT INTO orders (orderid, firstname, lastname, street, city, zipcode) VALUES ({orderID}, "{firstname}", "{lastname}", "{street}", "{city}", "{zipcode}")''')
    
    print(city)
   
    # Keep a counter for idorder_details_id
    #idorder_details_id = 1
    for item in items:
        cnx.execute(f'''SELECT * FROM products WHERE id = {item["id"]}''')
        product = cnx.fetchone()
        cnx.execute(f'''INSERT INTO order_details (orderID, productID, amount, size, color, price) VALUES ({orderID}, {product["id"]}, {item["amount"]}, "{product["size"]}", "{product["color"]}", {product["price"]})''')
       # idorder_details_id += 1
    connection.commit()

def get_20_most_popular():
    """
    Returdata
    En lista av de 20 produkter som är mest sålda i webshopen.
    Respektive produkts information finns i en dictionary med följande nycklar:
    id: Det unika artikelnumret
    brand: Märket på produkten
    type: Typ av plagg, huvudkategori.
    subtype: Typ av plagg, subkategori
    color: Plaggets färg
    gender: Kön
    price: Priset på plagget
    size: Storleken på plagget

    Exempelvis:
    [{'id': 1, 'brand': 'WESC', 'type': 'Shirt, 'subtype': 'T-shirt',
      'color': 'Red', 'gender': 'Female', 'price': 299, 'size': 'M'},
    ...,
    {'id': 443, 'brand': 'Cheap Monday', 'type': 'Pants,
     'subtype': 'Jeans', 'color': 'Black', 'gender': 'Male', 'price': 449,
     'size': 'S'}]
    """
    result = []
    
    cnx.execute(f'''select * from products order by price DESC limit 20''')

    
    for row in cnx:
        result.append(row)
    
    return result

def main():
    
    # Test write_order function
    order_data = {
        'name': 'Jwwwe qdqdq',
        'email': 'jddqdq',
        'address': '123 Main St',
        'zipcode': '12345',
        'city': 'Citycityyouyou',
        'items': '[12, 3443]'
        
    }
    write_order(order_data)
    print("Obra bra jobbat")

   

if __name__ == "__main__":
    main()
