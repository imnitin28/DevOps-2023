# Manage certificates with openssl
OpenSSL is an open-source software library for implementing the Transport Layer Security (TLS) and Secure Sockets Layer (SSL) protocols. It provides a set of cryptographic functions for secure communication over networks.

OpenSSL is widely used for securing communications on the internet, such as HTTPS, FTPS, and SMTPS. It supports a wide range of cryptographic algorithms, including symmetric encryption, asymmetric encryption, and hash functions. It also provides tools for generating and managing digital certificates and public and private keys.


## How to Use
#### Generate certificate and keys
```
sh generate_cert.sh
```

![image](https://user-images.githubusercontent.com/76727343/230678071-6713a52b-dd33-4fd7-a455-73441100908d.png)
----
#### View certificate and it's validity
```
openssl x509 -in knol.dev.crt -text -noout
```

![image](https://user-images.githubusercontent.com/76727343/230678116-89a21d85-d464-4812-b4dd-d8439c7ef047.png)
----
#### Genrate corresponding pem file
```
openssl x509 -in knol.dev.crt -text -out knol.dev.pem
```

![image](https://user-images.githubusercontent.com/76727343/230678189-2bb1ffc3-8ff8-4cf0-b5c8-7c4a7dc8e375.png)
----
Here's what each option in the command means:
- "x509" tells OpenSSL to treat the input file as an X.509 certificate.
- "-in knol.dev.crt" specifies the input file as "knol.dev.crt".
- "-text" tells OpenSSL to print out the certificate in human-readable text format.
- "-out knol.dev.pem" specifies the output file as "knol.dev.pem" and tells OpenSSL to write the certificate to this file in PEM format.
