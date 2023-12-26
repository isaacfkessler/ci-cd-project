## CI/CD Project for a Simple Web Application

In this project, I practiced a CI/CD pipeline for a simple web application. The application is developed in HTML, CSS, and JavaScript, and it is hosted on a Kubernetes cluster.

![image](https://github.com/isaacfkessler/ci-cd-project/assets/93961922/7400ecd1-6abe-455c-89fc-c8d4e54dbd0b)


The steps involved in the pipeline are as follows:

1. Create the Dockerfile
2. Build the image and push it to Docker Hub
3. Deploy the new version to the Kubernetes environment

A webhook was configured so that the deployment is triggered whenever a commit is made to the main branch of the project. This ensures that the application is always up-to-date and that the integration process is continuous.

**Technologies Used:**

* Docker
* Kubernetes
* GitHub
* Jenkins
