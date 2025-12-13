import os
import mysql.connector

password = os.getenv("DB_PASSWORD")
if not password:
    raise ValueError("DB_PASSWORD environment variable not set")

mydb = mysql.connector.connect (
host="localhost", 
user="Kwakudicky", 
password="heczij-ryhxuM-vekby6", 
database="alx_book_store")

print("Connected to the database successfully.")
print("MySQL server version:", mydb.get_server_info())