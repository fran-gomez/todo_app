from flask import Flask

def create_app(config_filename):
    app = Flask(__name__)

    app.config.from_object(config_filename)
    
    app.config['MYSQL_HOST'] = 'localhost'
    app.config['MYSQL_USER'] = 'root'
    app.config['MYSQL_PASSWORD'] = '@root5154'
    app.config['MYSQL_DB'] = 'events'
    
    from app import api_bp
    app.register_blueprint(api_bp, url_prefix='/')

    from Model import db
    db.init_app(app)

    return app


if __name__ == "__main__":
    app = create_app("config")
    app.run(debug=True)