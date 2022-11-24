echo "Criando as imagens..."

docker build -t dariolah/projeto-k8s-backend:1.0 backend/.
docker build -t dariolah/projeto-k8s-database:1.0 database/.

echo "Subindo as imagens para o Hub Docker..."

docker push dariolah/projeto-k8s-backend:1.0
docker push dariolah/projeto-k8s-database:1.0

echo "Criando serviços..."

kubectl apply -f ./services.yml

echo "Criando deploymentes..."

kubectl apply -f ./deployment.yml

