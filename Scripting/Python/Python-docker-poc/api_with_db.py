from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy
import os

app = Flask(__name__)

# Set the path for the SQLite database
db_path = os.path.join(os.getcwd(), 'users.db')
app.config["SQLALCHEMY_DATABASE_URI"] = f"sqlite:///{db_path}"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

db = SQLAlchemy(app)

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)

@app.before_first_request
def create_tables():
    db.create_all()  # Create the tables

@app.route('/')
def home():
    return 'Welcome to the API!'

@app.route('/api/users', methods=['POST'])
def create_user():
    data = request.json
    new_user = User(name=data['name'])
    db.session.add(new_user)
    db.session.commit()
    return jsonify({"id": new_user.id, "name": new_user.name}), 201

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')