bash -c "openssl genrsa -out key.pem"
bash -c "openssl req -new -key key.pem -out csr.pem"
bash -c "openssl x509 -req -days 9999 -in csr.pem -signkey key.pem -out cert.pem"
bash -c "rm csr.pem"