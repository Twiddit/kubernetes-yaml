kubectl delete pvc twiddit-ldap-claim0 twiddit-ldap-claim1 twiddit-ldap-claim2 twiddit-ldap-claim3
kubectl apply -f twiddit-volumes/twiddit-volumes.yaml && kubectl apply -f twiddit-ldap/ldap-service.yaml && kubectl apply -f twiddit-ldap/ldap-deployment.yaml 

# Se tiene que crear un Posix Group de nombre user 
# Se crea un OU de nombre users 
# Se crean 2 entradas dentro del OU 