echo "[X] Escalando servicios de red privada a 2 replicas"

kubectl scale deployment auth-ms --replicas 2
kubectl scale deployment twiddit-profile --replicas 2
kubectl scale deployment twiddit-search-service --replicas 2
kubectl scale deployment twiddit-social --replicas 2
kubectl scale deployment twiddit-twiddits --replicas 2
kubectl scale deployment twiddit-wa --replicas 2
kubectl scale deployment twiddit-ag --replicas 2