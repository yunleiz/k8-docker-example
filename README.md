# k8s-docker-example

## Prerequisites

- minikube
- kubernets
- virtualBox
- docker

## Start the app

`./docker_push '${registry_host}' ${repo_name}`

`minikube start`

`kubectl config use-context minikube` # The minikube cluster will be used by k8s after this line

`kubectl run hello-minikube --image=${registry_url}/k8s-docker-demo:latest --port=8080 `

`kubectl expose deployment hello-minikube --type=NodePort `

`minikube service hello-minikube --url ` # You will get the service ip here

`$(minikube service hello-minikube --url )\status` # Copy & paste the result from this command to brower, 'Hello' should be displayed.



## Health check commands





## Other issues

#### Image pull permission 

Here is a link for how to set permission for google cloud registry.

http://container-solutions.com/using-google-container-registry-with-kubernetes/

This setting is not needed when cluster is on google cloud, but when using minikube the permission has to be set up.