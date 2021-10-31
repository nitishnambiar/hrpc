# HRPC : Project
aYo assessment project

# Overview 
This repo is created to maintain the source code to complete the tasks given as per **aYo Assignment: DevOps Engineer

# Requirement
*Text in italics are optional

- Download the sample application found here: https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war
- *Generate self signed key pairs
- *Enable SSL termination inside the container
- Containerize the web application
  - *Containerize the application using maven or ant scripts
- Using a volume mount, save the log files to persistent storage.
- Using docker-compose or minikube runtime service run the container
- Ensure that the application is accessible on both http and https.
- Ensure that the project is available via GIT.
- *Using Jenkins, poll the SCM for changes every 15 minutes and rebuild the docker images if changes are found.
  - *Make use of Jenkins Pipelines
- *Jenkins should be deployed to minikube or docker-compose.

# Explaination

## Files

- Dockerfile : Standard docker file to create tomcat and hrpc images
- docker-compose.yml : docker compose file to build/run the services
- mycertificate.cert : Generated 2,048 bit RSA key pair and self-signed certificate (SHA256withRSA) with a validity of 90 days
- server.xml : XML file for setting the tomcat configurations for http/https

## Directory

We need to created logs directory in the project folder on the VM to store the logs from container. Directory is added just for demo/explaination purpose.

# Validation

I have created compute-engine on GCP with minimal specifications as per free-tier.

Application is available on the below URL :
- http://34.82.121.159:80/sample
- https://34.82.121.159:443/sample

**URLs will be only up during the Demo. VM will be in shutdown state otherwise.
