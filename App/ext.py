from flask_sqlalchemy import SQLAlchemy
from flask_bootstrap import Bootstrap
from flask_login import LoginManager
db = SQLAlchemy()
bst = Bootstrap()
login_manger = LoginManager()

# 初始化第三方库
def init_third(app):
    db.init_app(app=app)
    bst.init_app(app)
    login_manger.init_app(app)
    login_manger.login_view='/login/'