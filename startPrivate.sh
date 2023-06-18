# Inicio Cluster Privado Twiddit
echo "[X] Iniciando Cluster Privado"

# Iniciar los volumenes 
# kubectl apply -f twiddit-volumes/twiddit-volumes.yaml

# Iniciar el LDAP 
# kubectl apply -f twiddit-ldap/twiddit-ldap-service.yaml
# kubectl apply -f twiddit-ldap/twiddit-ldap-deployment.yaml

# kubectl apply -f twiddit-ldap/phpldapadmin-service.yaml
# kubectl apply -f twiddit-ldap/phpldapadmin-deployment.yaml

# Iniciar RabbitMQ 
kubectl apply -f twiddit-mq/rabbitmq-service.yaml
kubectl apply -f twiddit-mq/rabbitmq-deployment.yaml


kubectl apply -f twiddit-kompose/twiddit-ldap-service.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-deployment.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-default-networkpolicy.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim0-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim1-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim2-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim3-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/phpldapadmin-service.yaml
kubectl apply -f twiddit-kompose/phpldapadmin-deployment.yaml


# Iniciar perfil 
kubectl apply -f twiddit-profile/twiddit-profile-service.yaml