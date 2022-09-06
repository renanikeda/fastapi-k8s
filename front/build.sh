
#docker build --network host -t k3d-registry.local:5000/fastapi:v1
#docker push k3d-registry.local:5000/fastapi:v1
docker build -t fastapi .
docker login -u renanikeda

docker tag fastapi:latest renanikeda/fastapi:v1
docker push renanikeda/fastapi:v1
