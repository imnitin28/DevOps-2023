#!/bin/bash

# Set environment variables for Azure authentication
export ARM_SUBSCRIPTION_ID="b00e9e00-4924-464f-929d-7c28ccf1a449"
export ARM_CLIENT_ID="4c18574d-4aca-4dfa-8a17-7e4b545ecaf7"
export ARM_CLIENT_SECRET="gyd8Q~IjKs5HSOjQSDqdxQQpgwmSRjIo19G~zbGi"
export ARM_TENANT_ID="19808729-db27-4d6e-8315-1ba7d75db983"

# Login to Azure
az login --service-principal --username $ARM_CLIENT_ID --password $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID

# List all resources
az resource list --subscription $ARM_SUBSCRIPTION_ID