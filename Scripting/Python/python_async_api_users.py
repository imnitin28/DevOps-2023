from flask import Flask, jsonify, request
import asyncio

app = Flask(__name__)

# Sample data to act as our "database"
users = [
    {"id": 1, "name": "Alice", "email": "alice@example.com"},
    {"id": 2, "name": "Bob", "email": "bob@example.com"}
]

# Synchronous Endpoint: Retrieve all users
@app.route('/api/users', methods=['GET'])
def get_users():
    return jsonify(users), 200

# Asynchronous Endpoint: Retrieve a specific user by ID with a simulated delay
@app.route('/api/users/<int:user_id>', methods=['GET'])
async def get_user(user_id):
    await asyncio.sleep(2)  # Simulate an async delay
    user = next((user for user in users if user["id"] == user_id), None)
    if user:
        return jsonify(user), 200
    return jsonify({"error": "User not found"}), 404

# Synchronous Endpoint: Create a new user
@app.route('/api/users', methods=['POST'])
def create_user():
    new_user = request.json
    new_user["id"] = users[-1]["id"] + 1 if users else 1
    users.append(new_user)
    return jsonify(new_user), 201

# Asynchronous Endpoint: Delete a user by ID with a simulated delay
@app.route('/api/users/<int:user_id>', methods=['DELETE'])
async def delete_user(user_id):
    await asyncio.sleep(1)  # Simulate an async delay
    user = next((user for user in users if user["id"] == user_id), None)
    if not user:
        return jsonify({"error": "User not found"}), 404
    users.remove(user)
    return jsonify({"message": "User deleted"}), 200

if __name__ == '__main__':
    app.run(debug=True)
