from flask_restful import Resource

class Alarm(Resource):
    def get(self):
        return { "deadline": "HH:MM", "report": "report" }

    def post(self):
        pass

    def update(self):
        pass
    
    def delete(self):
        pass