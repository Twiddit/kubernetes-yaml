# Inicio Cluster Privado Twiddit
echo "[X] Iniciando Cluster Privado"

# Iniciar el LDAP 
kubectl apply -f twiddit-ldap/twiddit-ldap-service.yaml
kubectl apply -f twiddit-ldap/twiddit-ldap-deployment.yaml

kubectl apply -f twiddit-ldap/phpldapadmin-service.yaml
kubectl apply -f twiddit-ldap/phpldapadmin-deployment.yaml

# Iniciar RabbitMQ 
kubectl apply -f twiddit-mq/rabbitmq-service.yaml
kubectl apply -f twiddit-mq/rabbitmq-deployment.yaml

# Iniciar los volumenes 
kubectl apply -f twiddit-volumes/twiddit-volumes.yaml
