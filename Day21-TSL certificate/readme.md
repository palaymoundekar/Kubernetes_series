All the certificate files are located in control plan and location is /etc/kubernetes/pki

oot@cluster2-control-plane:/etc/kubernetes/pki# ls -lrt

-----

cat myuser.csr | base64 | tr -d "\n"

this will encode the value into one line