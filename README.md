
# Rails APP Example with Dockorized Dev environment and kubernetes Deployment using Kompose Tool

## Deploy with Kompose and Kubernetes

    kompose up -f docker-compose-deploy.yml -v
    kompose down -f docker-compose-deploy.yml -v
    kubectl exec -it <todo-web-xxxxxxxxxx-xxxxx> -- /bin/bash
    kubectl exec -it <todo-web-xxxxxxxxxx-xxxxx> rake db:migrate
    minikube service todo-web --url
    kubectl get pods
    minikube tunnel
    minikube tunnel --cleanup
    minikube dashboard
    minikube start
