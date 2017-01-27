## Certificates needed for minikube
Go to ./minikube in your home folder, there you will find the issued certificates for deployment. 
admin_cert is apiserver.crt
admin_key is apiserver.key
and cluster_ca is ca.crt

These need to be base64 encoded (including begin/end cert/key etc) and put into the config. 
