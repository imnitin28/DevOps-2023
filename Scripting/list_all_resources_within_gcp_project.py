from google.oauth2.credentials import Credentials
from googleapiclient import discovery

# Set the path to your JSON key file
creds = Credentials.from_authorized_user_info(info=json_key, scopes=['https://www.googleapis.com/auth/cloud-platform'])

# Build the service client
service = discovery.build('cloudresourcemanager', 'v1', credentials=creds)

# Set the project id
project_id = 'my-project-id'

# List all resources within the project
result = service.resources().list(project=project_id).execute()
resources = result.get('resources', [])

# Print the resources
for resource in resources:
    print(resource)
