# Project Title

Node.js Application with MongoDB: A DevOps-Centric Deployment on Amazon EKS
## Description:

This project showcases a complete DevOps pipeline for deploying a Node.js application with MongoDB as the database, utilizing a suite of DevOps tools and cloud services to ensure continuous integration, continuous deployment, security, and monitoring. The project emphasizes best practices in containerization, orchestration, and monitoring using GitHub, Jenkins, Docker, Amazon EKS,infrastructure as code terraform and other DevOps tools to deliver a robust, scalable, and secure application deployment.

## Tools and Technologies Used
- Node.js
- MongoDB
- GitHub
- Jenkins
- Jenkins Agent
- Docker
- Docker Hub
- Terraform
- SonarQube
- Trivy FS Scan
- Trivy Image Scan
- Amazon Elastic Kubernetes Service (EKS
- Jump Server (Bastion Host)
- AWS Elastic Load Balancer (ELB)
- Helm
- Prometheus
- Grafana

## Pipeline Flow Diagram


![App Screenshot](https://github.com/user-attachments/assets/d73ded4b-fd28-4f6d-9a53-7004ebf9140d)


## Components and Tools Used:

### Node.js Application with MongoDB:

A Node.js application built with Express and MongoDB for backend functionality, providing RESTful APIs for CRUD operations. MongoDB serves as the primary database for data storage and retrieval.

#### Source Code Management with GitHub:

The application's source code is managed using GitHub, enabling version control, collaboration, and automated CI/CD pipeline triggers.
####  Continuous Integration and Continuous Deployment (CI/CD) with Jenkins
Jenkins automates the CI/CD pipeline to manage the build, test, and deployment processes. The pipeline is defined using a Jenkinsfile, containing stages for building, testing, security scanning, and deployment to the Kubernetes cluster.

**Jenkins Agent for EKS Deployment** 
A Jenkins agent, configured to run on a dedicated node or container, is used specifically for handling deployments to Amazon EKS. This setup allows for secure and efficient interaction with the Kubernetes cluster.

#### Infrastructure as Code (IaC) with Terraform:

The Amazon EKS cluster, which is used to orchestrate containerized applications, is provisioned and managed using Terraform. Terraform scripts define the entire infrastructure setup, enabling version control and reproducibility of environments.

#### Code Quality and Security Analysis with SonarQube and Trivy:

**SonarQube** Integrated into the Jenkins pipeline to perform static code analysis, checking for code quality issues, bugs, and vulnerabilities.

**Trivy FS Scan** Scans the file system for vulnerabilities and misconfigurations in dependencies before building Docker images.

**Trivy Image Scan** Conducts security scans on Docker images to detect vulnerabilities before pushing to Docker Hub or deploying to EKS.

#### Containerization with Docker and Docker Hub:

The application is containerized using Docker to ensure consistency across development, testing, and production environments.

Docker images are built as part of the CI/CD pipeline and pushed to Docker Hub, enabling version control and easy deployment.
#### Container Orchestration with Amazon Elastic Kubernetes Service (EKS):

Amazon EKS is used for container orchestration, ensuring a scalable, highly available, and managed Kubernetes environment for the Node.js application.

Kubernetes manifests or Helm charts are used for deploying the application to EKS, automating tasks such as scaling, updating, and monitoring.
#### Secure Access via Jump Server:

A Jump Server (Bastion Host) is set up to provide secure access to the Amazon EKS cluster and other AWS resources, enhancing security by preventing direct access from the public internet.
#### Traffic Management with AWS Elastic Load Balancer (ELB):

An AWS Elastic Load Balancer is used to manage incoming traffic and distribute it across multiple pods in the EKS cluster, ensuring load balancing and high availability.
#### Monitoring and Observability with Prometheus and Grafana:
**Prometheus:** Deployed in the EKS cluster to collect and store metrics from the application and Kubernetes components, providing insights into performance and resource usage.

**Grafana:** Integrated with Prometheus to visualize metrics through interactive dashboards, enabling real-time monitoring, alerting, and troubleshooting.

## Project Workflow
#### Source Code Management:

Developers commit changes to the GitHub repository, which automatically triggers the Jenkins pipeline.
#### CI/CD Pipeline Execution:

**Build and Test:** Jenkins builds the Node.js application, runs unit tests, and checks for code quality using SonarQube.

**Security Scanning:** Trivy performs both FS scans (on the source code) and image scans (on Docker images) to ensure security before deployment.
#### Docker Image Build and Push:

Docker images are built upon successful completion of tests and scans and are pushed to Docker Hub for storage and version control.
#### Deployment to Amazon EKS:

The Jenkins agent specifically configured for EKS interacts with the cluster to deploy the Docker images as Kubernetes pods. Helm charts or Kubernetes manifests are used to manage deployments.
#### Traffic Routing and Load Balancing:

The AWS Elastic Load Balancer (ELB) manages incoming traffic and distributes it across application instances in the EKS cluster.
#### Monitoring and Alerting:

Prometheus collects metrics from the application and Kubernetes cluster.

Grafana visualizes these metrics and triggers alerts based on predefined thresholds, ensuring proactive monitoring and issue resolution.
# Local and CICD Deployment Steps

## Clon the repository
![Screenshot (503)](https://github.com/user-attachments/assets/fcd55fdc-6797-446e-ae5a-937ab9a75888)
## Package manager installation
![Screenshot (504)](https://github.com/user-attachments/assets/23c1ef44-182e-4c12-9e69-2cd1159c7e3e)
![Screenshot (505)](https://github.com/user-attachments/assets/a8b6f7d9-8d00-4013-8c98-7b83413244ec)
## Cloudinary Production environment credential
![Screenshot (509)](https://github.com/user-attachments/assets/e075e60a-76d3-459f-85ed-14eae930410e)
## MongoDB setup
![Screenshot (517)](https://github.com/user-attachments/assets/3945a6ca-15ca-413f-93db-563368645d3d)
![Screenshot (518)](https://github.com/user-attachments/assets/ef0e7a28-a3c5-4cc5-8e94-8d544e7c37be)
![Screenshot (519)](https://github.com/user-attachments/assets/d375c2c7-3a51-4bdb-a0d4-b21e5bca1152)
## ENV file setup
![Screenshot (522)](https://github.com/user-attachments/assets/a8b713f7-bca2-4dbe-8d3d-975a30ec2491)
## Application Run Local
![Screenshot (521)](https://github.com/user-attachments/assets/8524b335-b458-40c4-b6b0-4f28c572f320)
![Screenshot (525)](https://github.com/user-attachments/assets/131153b1-b391-4c94-a284-fd654109f7e1)
![Screenshot (528)](https://github.com/user-attachments/assets/5acde7e9-5dd1-462b-8274-a88db8fc42a3)

## MongoDB Database Connecting successfully
![Screenshot (529)](https://github.com/user-attachments/assets/3efd4810-3e58-461b-83ab-b672b5c31eea)
![Screenshot (530)](https://github.com/user-attachments/assets/2f49f23f-4b29-4e2e-aa37-6733f053c14a)
![Screenshot (531)](https://github.com/user-attachments/assets/514405d7-f5a0-4bf2-9a63-ea21bef7ec9f)

## EC2 setup for Jenkins & SonarQube & Trivy

![Screenshot (532)](https://github.com/user-attachments/assets/83afb7fa-6998-4309-89d9-027ef3be1957)

## Pipeline Overview
![Screenshot (635)](https://github.com/user-attachments/assets/7c3a078e-26cf-40ff-86b8-9c6043645af1)


## Jenkins credential setup
![Screenshot (615)](https://github.com/user-attachments/assets/5b5a03e5-f302-4f24-a43e-49e1a3acf607)


## SonarQube setup
![Screenshot (539)](https://github.com/user-attachments/assets/99121830-af3f-4c3e-b03c-a778ce7227de)
![Screenshot (536)](https://github.com/user-attachments/assets/c76cce39-948a-429f-baf6-ca82ff5b1916)

## Jenkins Agent Node setup
![Screenshot (564)](https://github.com/user-attachments/assets/a3a5c870-5057-4844-87eb-85d7294775fb)
![Screenshot (572)](https://github.com/user-attachments/assets/06dbaa6a-a411-434a-96c9-58c1630e9986)

## Jenkins Pipeline OUT PUT
![Screenshot (610)](https://github.com/user-attachments/assets/1e4616fb-cbd6-4370-8cad-2f2d688e6d9e)
 ## Trivy File scanning
 ![Screenshot (604)](https://github.com/user-attachments/assets/083bee38-c525-47c8-9d61-f13d17c00aab)

 ## SonarQube scanning
 ![Screenshot (543)](https://github.com/user-attachments/assets/06091663-75f5-488e-9dce-df003676e837)
![Screenshot (544)](https://github.com/user-attachments/assets/6607011c-bd2a-48e8-a38e-67eaf61a6cfb)

## Docker build and pushing Dockerhub
![Screenshot (627)](https://github.com/user-attachments/assets/22c58786-56be-41a1-a08a-cdc5e67e2142)
![Screenshot (628)](https://github.com/user-attachments/assets/256ac75c-0761-498b-b9e6-f0d5a2903060)

## Trivy Image scanning
![Screenshot (603)](https://github.com/user-attachments/assets/2b5e02ac-c5be-4e1e-92d0-83daf2097236)

## using Terraform EKS Creation
![Screenshot (611)](https://github.com/user-attachments/assets/54aa2df5-b31e-4359-b897-22adddbeea2d)
![Screenshot (558)](https://github.com/user-attachments/assets/1bd31583-3136-481a-983d-323b5bbf62f5)
![Screenshot (602)](https://github.com/user-attachments/assets/27c596da-8c65-4d65-bec1-f6f88f809363)
![Screenshot (659)](https://github.com/user-attachments/assets/1aef4132-347d-40c2-99a5-e6bee091c968)

## deploying The application Via Jenkins Agent Node-CONNECT with Jump Server
![Screenshot (577)](https://github.com/user-attachments/assets/8788887f-1814-4dbd-b4ec-e7dccccae6e4)
![Screenshot (574)](https://github.com/user-attachments/assets/a4d9d0ca-b952-45a5-b2c7-2886fbdc6ef9)
![Screenshot (609)](https://github.com/user-attachments/assets/ac2e0423-e9d3-4ca7-8f0f-0ecda49cc22b)
![Screenshot (578)](https://github.com/user-attachments/assets/f46e319a-290e-4418-a73f-683b491d2e9c)
![Screenshot (579)](https://github.com/user-attachments/assets/a14cfeb9-220b-4edc-8817-90225742eec6)
![Screenshot (583)](https://github.com/user-attachments/assets/55ffe12c-b887-4513-b15a-7193074e5714)

## AWS Elastic Load Balancer (ELB)
![Screenshot (600)](https://github.com/user-attachments/assets/ce6b2d17-e5c7-4afe-a356-3a268c06dc3e)


## Application and MongoDB Database OUTPUT
![Screenshot (638)](https://github.com/user-attachments/assets/a6a33eb0-0106-44b1-8897-1ac9792fa41d)
![Screenshot (639)](https://github.com/user-attachments/assets/426c9fe2-ca0d-4168-ac9c-95c32d18d940)
![Screenshot (640)](https://github.com/user-attachments/assets/fa084c89-da3f-42ac-9071-12f77faeb2fe)
![Screenshot (642)](https://github.com/user-attachments/assets/8bd4eeea-f241-4544-89e2-65e6aebdd238)
![Screenshot (643)](https://github.com/user-attachments/assets/43dc1de0-49ab-4a66-a794-6ca8777dcf27)
![Screenshot (644)](https://github.com/user-attachments/assets/97708ab0-97f2-40a1-b0a9-e63d51fff394)
![Screenshot (645)](https://github.com/user-attachments/assets/ea87fe1f-6c13-4346-8991-3e17ee70a21c)
![Screenshot (646)](https://github.com/user-attachments/assets/9b30f3a8-0b9c-4a83-a04e-2ae59d70c979)
![Screenshot (647)](https://github.com/user-attachments/assets/ebc6fcea-2dc8-4534-9487-037d8f45f2d8)
![Screenshot (648)](https://github.com/user-attachments/assets/fd1c1d76-54da-44b1-bb53-2257250b5eee)

## Jump Server OUTPUT

![Screenshot (606)](https://github.com/user-attachments/assets/1b9be1bc-1028-46ae-95d0-ecfdac2dba2d)
![Screenshot (607)](https://github.com/user-attachments/assets/83d84201-c3e0-4f72-b2ea-7d53dc8e4daf)


## EKS Cluster OUTPUT

![Screenshot (649)](https://github.com/user-attachments/assets/f65ee86a-189f-4310-bc32-0a402ec8599c)
![Screenshot (650)](https://github.com/user-attachments/assets/58eefdeb-bd0d-47e0-81b1-7a72b4b64d3a)
![Screenshot (651)](https://github.com/user-attachments/assets/b7131c2c-8d98-4025-827a-fc9b713d6f4d)
![Screenshot (652)](https://github.com/user-attachments/assets/3703d959-de5d-4011-a162-f7c20f82d2d9)
![Screenshot (655)](https://github.com/user-attachments/assets/2e0934ab-d332-4670-89f3-31a56bdbe512)



## Monitoring Tools setup Grafana and Prometheus
![Screenshot (584)](https://github.com/user-attachments/assets/d7105295-9a69-49d1-86cf-eb185c328879)
![Screenshot (587)](https://github.com/user-attachments/assets/e697231b-6986-4bfc-bd49-c32f4a8dae1c)
![Screenshot (585)](https://github.com/user-attachments/assets/36b5fb4f-ec89-4cac-a641-9fd135573250)
![Screenshot (630)](https://github.com/user-attachments/assets/53ecd283-c66f-417d-bd47-16a03773c804)
![Screenshot (631)](https://github.com/user-attachments/assets/a3128784-8bd1-419e-b3da-005407a7a519)
![Screenshot (632)](https://github.com/user-attachments/assets/707a0742-98f1-4bd1-9dcf-3321d25b0f3a)

**This project provides a comprehensive DevOps solution for deploying a Node.js application with MongoDB on Amazon EKS. By leveraging tools such as Jenkins, Docker, SonarQube, Trivy, and AWS services, it achieves a secure, automated, and scalable deployment process. Real-time monitoring with Prometheus and Grafana further ensures reliability and performance optimization, making it a robust platform for modern cloud-native applications.**


# Thank you.......
