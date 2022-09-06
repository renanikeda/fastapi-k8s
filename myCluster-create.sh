#k3d cluster create myCluster --api-port 127.0.0.1:7000 --servers 1 --agents 1
#kubectl create deployment mongodb --image=mongo
#kubectl create deployment fastapi --image=localhost:5000/fastapi

#docker run -d -p 5000:5000 --restart=always --name registry registry:2
#docker login k3d-registry.local:5000 -u renan -p ibotz#123
#k3d registry create registry.local --port 5000

docker login -u renanikeda
docker pull renanikeda/fastapi:v1

k3d cluster create myCluster --api-port 7000 --port "8081:30000@loadbalancer" --servers 1 --agents 3
./apply-deployments.sh

