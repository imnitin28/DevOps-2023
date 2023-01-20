import subprocess

# Install Elasticsearch, Logstash, and Kibana
subprocess.run(["apt-get", "install", "elasticsearch", "logstash", "kibana"])

# Start the Elasticsearch, Logstash, and Kibana services
subprocess.run(["systemctl", "start", "elasticsearch"])
subprocess.run(["systemctl", "start", "logstash"])
subprocess.run(["systemctl", "start", "kibana"])

# Create a Logstash pipeline configuration file
with open("/etc/logstash/conf.d/my-pipeline.conf", "w") as f:
    f.write("input { stdin {} } output { elasticsearch { hosts => [\"localhost:9200\"] } }")

# Restart the Logstash service to apply the new pipeline configuration
subprocess.run(["systemctl", "restart", "logstash"])

# Create a Kibana index pattern
subprocess.run(["curl", "-XPOST", "http://localhost:5601/api/saved_objects/index-pattern", "-H", "Content-Type: application/json", "-d", "\"{ \\\"attributes\\\": { \\\"title\\\": \\\"logstash-*\\\" } }\""])
