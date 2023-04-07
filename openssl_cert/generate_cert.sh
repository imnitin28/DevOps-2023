#!/bin/bash

# Set the Common Name for the CA certificate
echo "Enter name for cert"
read cert_name
# COMMON_NAME=${cert_name}

# Generate a private key for the CA
openssl genrsa -out ${cert_name}.key 4096

# Create a Certificate Signing Request (CSR) for the CA
openssl req -new -key ${cert_name}.key -out ${cert_name}.csr -subj "/CN=${cert_name}"

# Generate the CA certificate using the CSR and private key
openssl x509 -req -days 3650 -in ${cert_name}.csr -signkey ${cert_name}.key -out ${cert_name}.crt

# Cleanup the CSR
rm ${cert_name}.csr

# Output the generated CA certificate
cat ${cert_name}.crt
