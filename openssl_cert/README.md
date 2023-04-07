# Manage certificates with openssl
OpenSSL is an open-source software library for implementing the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols. It provides a set of cryptographic functions for secure communication over networks.

OpenSSL is widely used for securing communications on the internet, such as HTTPS, FTPS, and SMTPS. It supports a wide range of cryptographic algorithms, including symmetric encryption, asymmetric encryption, and hash functions. It also provides tools for generating and managing digital certificates and public and private keys.


## How to Use
#### Generate certificate and keys
```sh generate_cert.sh```

#### View certificate and it's validity
```
openssl x509 -in knol.dev.crt -text -noout
```

#### Genrate corresponding pem file
```
openssl x509 -in knol.dev.crt -text -out knol.dev.pem
```

Here's what each option in the command means:
"x509" tells OpenSSL to treat the input file as an X.509 certificate.
"-in knol.dev.crt" specifies the input file as "knol.dev.crt".
"-text" tells OpenSSL to print out the certificate in human-readable text format.
"-out knol.dev.pem" specifies the output file as "knol.dev.pem" and tells OpenSSL to write the certificate to this file in PEM format.