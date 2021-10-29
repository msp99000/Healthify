from werkzeug.security import generate_password_hash, check_password_hash
from app import db


class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)

    username = db.Column(db.String(64), index=True, unique=True)
    fullname = db.Column(db.String(100), index=True, unique=False)
    email = db.Column(db.String(120), index=True, unique=True)
    login_counts = db.Column(db.Integer,default=0)
    password_hash = db.Column(db.String(128))

    def set_password(self, password):
        self.password_hash = generate_password_hash(password)

    def check_password(self, password):
        return check_password_hash(self.password_hash, password)

    def get_json_data(self):
        return {
            "username": self.username,
            "fullname": self.fullname,
            "email": self.email,
            "login_counts" : self.login_counts,
        }
