from flask import Flask, jsonify
import time

app = Flask(__name__)

class RateLimiter:
    def __init__(self, max_tokens, refill_rate):
        self.max_tokens = max_tokens
        self.refill_rate = refill_rate
        self.tokens = max_tokens
        self.last_refill_time = time.time()

    def refill(self):
        now = time.time()
        tokens_to_add = (now - self.last_refill_time) * self.refill_rate
        self.tokens = min(self.max_tokens, self.tokens + tokens_to_add)
        self.last_refill_time = now

    def allow_request(self):
        self.refill()
        if self.tokens >= 1:
            self.tokens -= 1
            return True
        else:
            return False

rate_limiter = RateLimiter(5, 1) # Allow 5 requests per second

@app.route("/")
def index():
    if rate_limiter.allow_request():
        return jsonify({"message": "Request allowed."})
    else:
        return jsonify({"message": "Request blocked due to rate limiting."}), 429

if __name__ == "__main__":
    app.run(debug=True)
