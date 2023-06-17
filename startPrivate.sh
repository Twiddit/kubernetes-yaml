# Inicio Cluster Privado Twiddit
echo "[X] Iniciando Cluster Privado"

# Iniciar los volumenes 
kubectl apply -f kubernetes-yaml/twiddit-volumes/twiddit-volumes.yaml

# Iniciar el LDAP 
kubectl apply -f kubernetes-yaml/twiddit-ldap/twiddit-ldap-service.yaml
kubectl apply -f kubernetes-yaml/twiddit-ldap/twiddit-ldap-deployment.yaml

kubectl apply -f kubernetes-yaml/twiddit-ldap/phpldapadmin-service.yaml
kubectl apply -f kubernetes-yaml/twiddit-ldap/phpldapadmin-deployment.yaml

# Iniciar RabbitMQ 
kubectl apply -f kubernetes-yaml/twiddit-ldap/phpldapadmin-service.yaml
kubectl apply -f kubernetes-yaml/twiddit-ldap/phpldapadmin-deployment.yaml


