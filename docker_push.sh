hostname="$1"
project_id="$2"

docker build -t k8s-docker-demo ./
docker tag  k8s-docker-demo:latest ${hostname}/${project_id}/k8s-docker-demo:latest
docker push gcr.io/data-science-164517/k8s-docker-demo:latest