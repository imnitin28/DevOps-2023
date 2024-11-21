from flask import Flask, jsonify, request

app = Flask(__name__)

# Sample data to act as our "database"
users = [
    {"id": 1, "name": "Alice", "email": "alice@example.com"},
    {"id": 2, "name": "Bob", "email": "bob@example.com"}
]

# Helper function to find a user by ID
def find_user(user_id):
    return next((user for user in users if user["id"] == user_id), None)

# GET endpoint to retrieve all users
@app.route('/api/users', methods=['GET'])
def get_users():
    return jsonify(users), 200

# GET endpoint to retrieve a single user by ID
@app.route('/api/users/<int:user_id>', methods=['GET'])
def get_user(user_id):
    user = find_user(user_id)
    if user:
        return jsonify(user), 200
    return jsonify({"error": "User not found"}), 404

# POST endpoint to create a new user
@app.route('/api/users', methods=['POST'])
def create_user():
    new_user = request.json
    new_user["id"] = users[-1]["id"] + 1 if users else 1  # Auto-increment ID
    users.append(new_user)
    return jsonify(new_user), 201

# PUT endpoint to update an existing user
@app.route('/api/users/<int:user_id>', methods=['PUT'])
def update_user(user_id):
    user = find_user(user_id)
    if not user:
        return jsonify({"error": "User not found"}), 404
    updated_data = request.json
    user.update(updated_data)
    return jsonify(user), 200

# DELETE endpoint to delete a user by ID
@app.route('/api/users/<int:user_id>', methods=['DELETE'])
def delete_user(user_id):
    user = find_user(user_id)
    if not user:
        return jsonify({"error": "User not found"}), 404
    users.remove(user)
    return jsonify({"message": "User deleted"}), 200

if __name__ == '__main__':
    app.run(debug=True)
