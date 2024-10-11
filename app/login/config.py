# config.py

import os

class Config:
    SQLALCHEMY_DATABASE_URI = 'mysql+mysqlconnector://azureuser:user%40123@flask-mysql.mysql.database.azure.com:3306/login_db'  # Ensure correct port for MySQL
    SQLALCHEMY_TRACK_MODIFICATIONS = False