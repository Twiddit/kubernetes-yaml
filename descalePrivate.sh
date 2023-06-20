echo "[X] Desescalando servicios de red privada a 1 replica"

kubectl scale deployment auth-ms --replicas 1
kubectl scale deployment twiddit-profile --replicas 1
kubectl scale deployment twiddit-search-service --replicas 1
kubectl scale deployment twiddit-social --replicas 1
kubectl scale deployment twiddit-twiddits --replicas 1
kubectl scale deployment twiddit-wa --replicas 1
kubectl scale deployment twiddit-ag --replicas 1