"""SQLAlchemy models for boardgame-research"""
from datetime import datetime
from flask_sqlalchemy import SQLAlchemy

# try flasklogin first
# from flask_bcrypt import Bcrypt
# bcrypt = Bcrypt()

db = SQLAlchemy()


def connect_db(app):
    """Connect this database to provided Flask app.

    You should call this in your Flask app.
    """

    db.app = app
    db.init_app(app)