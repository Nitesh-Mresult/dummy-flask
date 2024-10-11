# app.py

from flask import Flask, request, jsonify, render_template
from flask_sqlalchemy import SQLAlchemy
from config import Config
from models import db, User

app = Flask(__name__)
app.config.from_object(Config)
db.init_app(app)

# Create the database and the db table
with app.app_context():
    db.create_all()

@app.route('/', methods=['GET'])
def hello_world():
    return jsonify(message="Hello, World!")

@app.route('/login', methods=['POST'])
def login():
    data = request.get_json()  # Get JSON data
    username = data.get('username')
    password = data.get('password')

    # Basic validation
    if not username or not password:
        return jsonify({'message': 'Missing username or password!'}), 400

    # Check if user exists
    user = User.query.filter_by(username=username).first()
    if user and user.password == password:  # In a real app, use hashed passwords!
        return jsonify({'message': 'Login successful!'}), 200
    else:
        return jsonify({'message': 'Invalid username or password!'}), 401

@app.route('/register', methods=['POST'])
def register():
    data = request.get_json()
    username = data.get('username')
    password = data.get('password')

    if not username or not password:
        return jsonify({'message': 'Missing username or password!'}), 400

    if User.query.filter_by(username=username).first():
        return jsonify({'message': 'User already exists!'}), 409

    new_user = User(username=username, password=password)
    db.session.add(new_user)
    db.session.commit()
    return jsonify({'message': 'User registered successfully!'}), 201


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
