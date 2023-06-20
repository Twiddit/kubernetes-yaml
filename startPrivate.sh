# Inicio Cluster Privado Twiddit
echo "[X] Iniciando Cluster Privado"

echo "[X] Iniciando Servicio: RABBITMQ"
# Iniciar RabbitMQ 
#kubectl apply -f twiddit-mq/rabbitmq-service.yaml
#kubectl apply -f twiddit-mq/rabbitmq-deployment.yaml

echo "[X] Iniciando Volumenes"
# Iniciar Volumenes
# kubectl apply -f twiddit-volumes/twiddit-volumes.yaml

echo "[X] Iniciando Servicio: LDAP"
# Iniciar LDAP 
# kubectl apply -f twiddit-ldap/twiddit-ldap-service.yaml
# kubectl apply -f twiddit-ldap/twiddit-ldap-deployment.yaml

echo "[X] Iniciando Servicio: LDAP-CLIENT"
# Iniciar cliente LDAP
# kubectl apply -f twiddit-kompose/phpldapadmin-service.yaml
# kubectl apply -f twiddit-kompose/phpldapadmin-deployment.yaml

echo "[X] Iniciando Servicio: AUTHENTICATION"
# Iniciar autenticación 
# kubectl apply -f twiddit-auth/twiddit-auth-service.yaml
# kubectl apply -f twiddit-auth/twiddit-auth-deployment.yaml

echo "[X] Iniciando Servicio: TWIDDITS"
# Iniciar Twiddits
# kubectl apply -f twiddit-search/twiddit-twiddits-service.yaml

echo "[X] Iniciando Servicio: COMMUNIDDITS"
# Iniciar Communiddits
# kubectl apply -f twiddit-communiddits/twiddit-communiddits-service.yaml

echo "[X] Iniciando Servicio: SEARCH"
# Iniciar Search
# kubectl apply -f twiddit-search/twiddit-search-service.yaml

echo "[X] Iniciando Servicio: SOCIAL"
# Iniciar Social 
# kubectl apply -f twiddit-social/twiddit-social-service.yaml

echo "[1] Iniciando Servicio: PROFILE"
# Iniciar perfil 
# kubectl apply -f twiddit-profile/twiddit-profile-service.yaml

echo "[X] Iniciando Servicio: API GATEWAY"
# Iniciar API Gateway
# kubectl apply -f twiddit-ag/twiddit-ag-service.yaml
# kubectl apply -f twiddit-ag/twiddit-ag-deployment.yaml

echo "[X] Iniciando Servicio: INTERFACE"
# Iniciar la interfaz
# kubectl apply -f twiddit-int/twiddit-int-service.yaml
# kubectl apply -f twiddit-int/twiddit-int-deployment.yaml

echo "[X] Iniciando Servicio: WEB APPLICATION"
# Iniciar Web App
# kubectl apply -f twiddit-wa/twiddit-wa-service.yaml
# kubectl apply -f twiddit-wa/twiddit-wa-deployment.yaml