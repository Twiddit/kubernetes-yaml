echo "[X] Iniciando dependencias (LDAP, LDAP-Client, RabbitMQ)"

# Iniciar LDAP 
kubectl apply -f twiddit-kompose/twiddit-ldap-service.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-deployment.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-default-networkpolicy.yaml
# Iniciar Volumenes
kubectl apply -f twiddit-kompose/twiddit-ldap-claim0-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim1-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim2-persistentvolumeclaim.yaml
kubectl apply -f twiddit-kompose/twiddit-ldap-claim3-persistentvolumeclaim.yaml
# Iniciar cliente LDAP
kubectl apply -f twiddit-kompose/phpldapadmin-service.yaml
kubectl apply -f twiddit-kompose/phpldapadmin-deployment.yaml

# Iniciar RabbitMQ 
#kubectl apply -f twiddit-mq/rabbitmq-service.yaml
#kubectl apply -f twiddit-mq/rabbitmq-deployment.yaml