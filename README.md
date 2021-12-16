# flutter_mvu

A playground project for implementing MVU in Flutter

# CICD
Automated Build Pipelines have been established to create a new build for iOS, Android, and UWP for every new push the main branch.

iOS build and code signing is handled using Code Magic CLU. More information about generating certificates and keys can be found here : https://docs.flutter.dev/deployment/ios#create-a-build-archive-with-codemagic-cli-tools

## Repository Secrets
In order for these Pipeline to run, the following values need to be saved in the Repository Secrets:

| Name | Value |
|---|---|
| APP_CENTER_TOKEN | https://docs.microsoft.com/en-us/appcenter/api-docs/ |
| APP_STORE_CONNECT_ISSUER_ID | https://appstoreconnect.apple.com/access/api |
| APP_STORE_CONNECT_KEY_IDENTIFIER | https://appstoreconnect.apple.com/access/api |
| APP_STORE_CONNECT_PRIVATE_KEY | https://appstoreconnect.apple.com/access/api |
|CERT_KEY |  openssl pkcs12 -in <certificate_name>.p12 -nodes -nocerts \| openssl rsa -out cert_key |
| KEYSTORE | openssl base64 < your_signing_keystore.jks \| tr -d '\n' \| tee your_signing_keystore_base64_encoded.txt |
| SIGNING_KEY_ALIAS | alias used to generate keystore |
| SIGNING_KEY_PASSWORD | key password used to generate keystore |
| SIGNING_STORE_PASSWORD | store password used to generate keystore |