from flask import Flask
from flask_script import Manager
from App.ext import init_third
from App.views import bp
from App.user import us
from flask_moment import Moment
app = Flask(__name__)
app.config.from_pyfile("setting.py")


manager = Manager(app)
moment = Moment(app)

init_third(app)

app.register_blueprint(bp)
app.register_blueprint(us)

if __name__ == '__main__':
    manager.run()
