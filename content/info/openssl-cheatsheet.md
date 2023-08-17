---
layout: page
title: "OpenSSL Cheatsheet"
meta: "false"
tags: ["ops", "sec"]
---

## OpenSSL Quick Commands

Details of a certificate

```sh
openssl x509 -noout -text -in <cert> 
```

Generate the Sha1 or sha256 fingerprint for a certificate

```sh
openssl x509 - -noout -text -fingerprint [-sha1|-sha256] in <certificate>
```


## SSL Private CA

- Build a CA
  - See [JamieLinux.com](https://jamielinux.com/docs/openssl-certificate-authority/create-the-root-pair.html) for a good walkthrough.
- Build a new certificate

```sh
  openssl req -out mydomain.csr -new -sha256 -newkey rsa:2048 -nodes -keyout mydoamin.key
```

- Parameters
  - Country: US
  - State: Michigan
  - Locality Name: Full City Name
  - Organization Name: Company
  - Organizational Unit: Department
  - Common name: fqdn.mydomain.com
  - Email: blank
  - Defaults for rest
- Sign Certificate

```sh
  openssl ca -config openssl.cnf -in mydomain.csr -out mydomain.crt
```

### Using a Private CA - Cert Manager

Leveraging [cert-manager](https://github.com/jetstack/cert-manager)

Create a secrete with the crt and key above (base64 encoded)

```sh
kubectl create secret tls internalca --cert=path/to/cert/file --key=path/to/key/file
```

Then create an issuer for that key

```sh
kubectl apply -f - <EOF
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: ca-issuer
spec:
  ca:
    secretName: internalca
EOF
```