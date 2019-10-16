# Vet Services

This repository contains an example of a Spring Boot application that provides data services to a veterinary practice.

The application is deployable bare-metal, in a container locally, or in a kubernetes cluster.

## Running Locally

This application requires a MySQL db to be accessible with tables configured for the entities it uses.
There is a docker-compose file that will give your local machine all the dependencies it needs to run the services locally in an IDE, if you have docker installed then run the following:
```bash
docker-compose up
```
This will start up a MySQL container locally on port 3306.
From there you can run the application in your IDE as you would normally, and it should be able to connect to the DB with no problems.

## Running in Kubernetes

To run this stack in Kubernetes, do the following:
1. Make sure you have Docker and [Minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/) installed.
2. Build each service by running the following command in the root project directory:
    ```bash
    docker build -f <<SERVICE_NAME>>/Dockerfile -t <<SERVICE_NAME>>:4 .
    ```
    **NOTE:** You will have to repeat this for each of the services in this repository ("appointment-service" etc.)
    
3. Deploy the stack to Minikube:
    ```bash
    kubectl apply -f deployment.yaml
    ```
4. To expose a service outside of the Kubernetes cluster, run the following commands:
    ```bash
    minikube tunnel
    minikube service <<SERVICE_NAME>> 
    ```
