cd ./front
kubectl apply -f deployment-fastapi.yaml
kubectl apply -f service-fastapi.yaml
cd ../back
kubectl apply -f deployment-mongo.yaml
kubectl apply -f service-mongo.yaml
