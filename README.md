# AWS Cloud Resume Challenge

A cloud-hosted developer portfolio built to demonstrate practical skills in **AWS, Terraform, Serverless Architecture, GitHub Actions CI/CD, and CloudFront**.

This project combines a responsive portfolio website with a serverless visitor counter and Infrastructure as Code.

---

## 🌐 Live Demo

https://d215msjd79hcy2.cloudfront.net/

---

## 📌 Project Overview

This project is a cloud-hosted portfolio website deployed on AWS.

The website is stored in **Amazon S3** and delivered globally through **Amazon CloudFront**.

A serverless visitor counter is implemented using:

- Amazon API Gateway
- AWS Lambda
- Amazon DynamoDB

The AWS infrastructure is provisioned and managed using **Terraform**.

GitHub Actions is used to automate website deployment whenever changes are pushed to the `main` branch.

---

## 🏗️ Architecture

### Website Architecture

```text
                    User / Browser
                          |
                          v
                  Amazon CloudFront
                    HTTPS / CDN
                          |
                          v
                     Amazon S3
                  Portfolio Website

Visitor Counter Architecture

User / Browser
      |
      v
Amazon API Gateway
      |
      v
   AWS Lambda
      |
      v
Amazon DynamoDB
      |
      v
Visitor Count

☁️ AWS Services Used

AWS Service	Purpose
Amazon S3	Stores the portfolio website
Amazon CloudFront	CDN and HTTPS delivery
AWS Lambda	Serverless visitor counter logic
Amazon DynamoDB	Stores visitor count
Amazon API Gateway	HTTP API for the visitor counter
AWS IAM	Access control and permissions
AWS WAF	Web application protection
Amazon CloudWatch	Logging and monitoring
AWS IAM OIDC	Secure GitHub Actions authentication

🛠️ Technologies

Frontend
HTML5
CSS3
JavaScript
Cloud & DevOps
AWS
Terraform
Git
GitHub
GitHub Actions
Serverless Architecture
Programming & Scripting
Python
JavaScript

🚀 CI/CD Pipeline

GitHub Actions is used to automate the deployment of website changes.

Deployment Flow
Developer
   |
   v
Git Commit
   |
   v
GitHub Repository
   |
   v
GitHub Actions
   |
   v
AWS IAM OIDC
   |
   v
Amazon S3
   |
   v
CloudFront Cache Invalidation
   |
   v
Live Website

Deployment Process

Whenever code is pushed to the main branch:

GitHub Actions starts automatically.
The repository is checked out.
GitHub authenticates with AWS using OIDC.
Website files are synchronized to Amazon S3.
CloudFront cache is invalidated.
The updated website becomes available through CloudFront.

No long-lived AWS access keys are stored in GitHub Actions.

Infrastructure vs Deployment

Terraform is used to provision and manage the AWS infrastructure.

GitHub Actions is used to automate website deployment.

This separation keeps infrastructure management and application deployment as two distinct processes.

👀 Serverless Visitor Counter

The portfolio includes a dynamic visitor counter.

When a visitor loads the website, the frontend sends a request to the API.

The API Gateway endpoint invokes the Lambda function.

Lambda updates the visitor count stored in DynamoDB and returns the updated count to the browser.

Flow
Browser
   |
   v
API Gateway
   |
   v
Lambda
   |
   v
DynamoDB
   |
   v
Updated Visitor Count
   |
   v
Browser

🔐 Security

Security was considered throughout the architecture.

The project uses:

Amazon S3 without direct public website access.
CloudFront Origin Access Control (OAC) for access to S3.
HTTPS through CloudFront.
AWS WAF for web application protection.
A dedicated IAM role for Lambda.
Restricted DynamoDB permissions for the Lambda function.
GitHub Actions authentication through AWS OIDC.
Infrastructure and deployment configuration stored in version control.
Least-privilege IAM permissions where applicable.

The use of GitHub OIDC avoids storing long-lived AWS access keys inside GitHub Actions.

🏗️ Infrastructure as Code

AWS infrastructure is managed using Terraform.

Terraform configuration is organized into separate files for different infrastructure components.
terraform/
├── provider.tf
├── variables.tf
├── main.tf
├── s3.tf
├── cloudfront.tf
├── lambda.tf
├── dynamodb.tf
├── api.tf
└── iam.tf

The Terraform configuration manages infrastructure including:

Amazon S3
Amazon CloudFront
AWS Lambda
Amazon DynamoDB
Amazon API Gateway
AWS IAM

Using Terraform provides:

Infrastructure as Code
Version-controlled infrastructure
Repeatable deployments
Easier infrastructure changes
Better understanding of AWS resources and dependencies

📁 Project Structure

cloud-resume-challenge/
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── assets/
│
├── css/
│   └── style.css
│
├── js/
│   └── script.js
│
├── terraform/
│   ├── provider.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── s3.tf
│   ├── cloudfront.tf
│   ├── lambda.tf
│   ├── dynamodb.tf
│   ├── api.tf
│   └── iam.tf
│
├── .gitignore
├── index.html
└── README.md

🔄 Deployment Workflow

The overall development workflow is:
Local Development
       |
       v
Git
       |
       v
GitHub Repository
       |
       v
GitHub Actions
       |
       v
AWS
       |
       v
CloudFront
       |
       v
Live Portfolio
This project demonstrates how source code can move from local development to a cloud-hosted production environment using Git and CI/CD automation.

💡 Key Learning Outcomes

Through this project, I practiced:

Deploying a website using AWS.
Working with Amazon S3.
Configuring Amazon CloudFront.
Understanding CDN caching and invalidation.
Building a serverless backend using API Gateway, Lambda and DynamoDB.
Managing AWS IAM permissions.
Applying least-privilege principles.
Using Terraform for Infrastructure as Code.
Managing infrastructure through version control.
Configuring GitHub Actions CI/CD.
Using GitHub OIDC for secure AWS authentication.
Connecting frontend JavaScript with a serverless API.
Understanding AWS service integration.
Designing a cloud architecture with cost awareness.
Thinking about security and operational considerations when deploying cloud applications.

💰 Cost Awareness

Cost control was an important consideration while designing this project.

The architecture avoids continuously running infrastructure such as:

EC2 instances
RDS databases
NAT Gateways
EKS clusters

Instead, the project primarily uses serverless and managed AWS services.

However, AWS services can still generate charges depending on usage, configuration and current pricing.

Therefore:

AWS usage should be monitored regularly.
Unnecessary resources should be removed when they are no longer required.
Cloud resources should be kept running only when needed for demonstrations or development.
AWS pricing and Free Tier limits should always be checked before deploying resources.
📚 What This Project Demonstrates

This project demonstrates practical experience with:

Cloud

AWS S3, CloudFront, Lambda, API Gateway, DynamoDB and IAM.

Infrastructure as Code

Terraform-based AWS infrastructure management.

CI/CD

GitHub Actions automated deployment.

Security

IAM, least-privilege permissions, CloudFront OAC and GitHub OIDC.

Serverless Architecture

API Gateway + Lambda + DynamoDB.

Version Control

Git and GitHub-based project development.

🔗 Repository

GitHub:

https://github.com/akshayshendurkar55-dot/cloud-resume-challenge

👨‍💻 Author

Laxmikant Shendurkar

B.Tech CSE Student | Aspiring Cloud & DevOps Engineer

GitHub:
https://github.com/akshayshendurkar55-dot

LinkedIn:
https://www.linkedin.com/in/laxmikant-shendurkar-b34b3622a/
