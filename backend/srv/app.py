from flask import Blueprint
from flask_restful import Api

from resources.Alarm import Alarm
from resources.Event import Event
from resources.User import User

api_bp = Blueprint('api', __name__)
api = Api(api_bp)

# Route
api.add_resource(User, '/User')
api.add_resource(Event, '/Event')
api.add_resource(Alarm, '/Alarm')