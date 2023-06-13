# ITI-Pipeline

This is my graduation project for the ITI program. It showcases a pipeline for deploying a Jenkins server on Google Kubernetes Engine (GKE) using Terraform for cluster creation, Ansible for Jenkins deployment, and Docker for Jenkins slave creation.

## Project Structure

The project consists of the following components:

1. `Terraform/`: Contains Terraform code for creating the GKE private cluster, vpc, subnet and nat gateway.

![Image Description](./diagram.jpg)

2. `ansible/`: Contains Ansible playbook for deploying Jenkins on the GKE cluster using kubectl.
3. `docker/`: Contains Dockerfile for building the Jenkins slave image.

## Prerequisites

Before running the project, make sure you have the following prerequisites installed and configured:

1. Google Cloud Platform (GCP) account with appropriate permissions.
2. Terraform CLI installed.
3. Ansible installed.
4. Docker installed.

## Installation

To deploy the Jenkins pipeline, follow these steps:

1. Clone the repository:

   ```bash
   git clone https://github.com/your-username/your-project.git


gcloud container clusters get-credentials $(terraform output -raw kubernetes_cluster_name) --region $(terraform output -raw region)

kubectl get service <service-name> -n default --output='jsonpath={.spec.clusterIP}'
