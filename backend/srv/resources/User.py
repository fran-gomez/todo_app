from flask_restful import Resource
from flask_mysqldb import MySQL
from run import app

db = MySQL(app)

class User(Resource):
    def get(self):
        return { "username": "User name", "email": "email@somedomain.com", "password": "somepassword" }

    def post(self):
        pass

    def update(self):
        pass
    
    def delete(self):
        pass