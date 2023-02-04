from flask import Flask, jsonify
import time

app = Flask(__name__)

class RateLimiter:
    def __init__(self, max_requests, per_time_unit):
        self.max_requests = max_requests
        self.per_time_unit = per_time_unit
        self.request_tracker = []

    def allow_request(self):
        current_time = time.time()
        while len(self.request_tracker) > 0 and self.request_tracker[0] < current_time - self.per_time_unit:
            self.request_tracker.pop(0)
        if len(self.request_tracker) < self.max_requests:
            self.request_tracker.append(current_time)
            return True
        else:
            return False

rate_limiter = RateLimiter(3, 5) # Allow 3 requests per 5 seconds

@app.route("/")
def index():
    if rate_limiter.allow_request():
        return jsonify({"message": "Request allowed."})
    else:
        return jsonify({"message": "Request blocked due to rate limiting."}), 429

if __name__ == "__main__":
    app.run(debug=True)
