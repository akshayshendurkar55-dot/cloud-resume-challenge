# AWS Cloud Resume Challenge

A cloud-hosted developer portfolio built to demonstrate practical skills in **AWS, Terraform, Serverless Architecture, GitHub Actions CI/CD, and CloudFront**.

This project combines a responsive portfolio website with real AWS infrastructure and a serverless visitor counter.

## 🌐 Live Demo

https://d215msjd79hcy2.cloudfront.net/

## 📌 Project Overview

The portfolio website is hosted using Amazon S3 and delivered through Amazon CloudFront.

A serverless visitor counter is implemented using:

- Amazon API Gateway
- AWS Lambda
- Amazon DynamoDB

The infrastructure is managed using Terraform, and GitHub Actions automatically deploys website changes to AWS whenever code is pushed to the `main` branch.

## 🏗️ Architecture

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


Visitor Counter

User
 |
 v
CloudFront Website
 |
 v
API Gateway
 |
 v
AWS Lambda
 |
 v
DynamoDB
 |
 v
Visitor Count
```

## ☁️ AWS Services Used

| AWS Service | Purpose |
|---|---|
| Amazon S3 | Stores the portfolio website |
| Amazon CloudFront | CDN and HTTPS delivery |
| AWS Lambda | Serverless visitor counter logic |
| Amazon DynamoDB | Stores visitor count |
| Amazon API Gateway | HTTP API for visitor counter |
| AWS IAM | Access control and permissions |
| AWS WAF | Web application protection |
| Amazon CloudWatch | Logging and monitoring |
| AWS IAM OIDC | Secure GitHub Actions authentication |

## 🛠️ Technologies

- HTML5
- CSS3
- JavaScript
- AWS
- Terraform
- Git
- GitHub
- GitHub Actions
- Python
- Serverless Architecture

## 🚀 CI/CD Pipeline

The project uses GitHub Actions for automated deployment.

### Deployment Flow

```text
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
```

Whenever code is pushed to the `main` branch:

1. GitHub Actions starts automatically.
2. GitHub authenticates with AWS using OIDC.
3. Website files are synchronized to the S3 bucket.
4. CloudFront cache is invalidated.
5. The updated website becomes available through CloudFront.

No long-lived AWS access keys are stored inside GitHub Actions.

## 👀 Serverless Visitor Counter

The portfolio includes a dynamic visitor counter.

The browser sends a GET request to API Gateway.

API Gateway invokes the Lambda function.

Lambda updates the visitor count in DynamoDB.

The updated count is returned to the browser as JSON.

### Flow

```text
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
```

## 🔐 Security

The project uses several security practices:

- Amazon S3 bucket is not publicly exposed.
- CloudFront uses Origin Access Control to access S3.
- HTTPS is enforced through CloudFront.
- AWS WAF is attached to the CloudFront distribution.
- Lambda uses a dedicated IAM role.
- Lambda DynamoDB permissions are restricted to the required table and operation.
- GitHub Actions uses AWS OIDC instead of long-lived AWS access keys.
- Infrastructure and deployment configuration are maintained in version control.

## 🏗️ Infrastructure as Code

AWS infrastructure is managed using Terraform.

Terraform configuration includes:

- S3
- CloudFront
- Lambda
- DynamoDB
- API Gateway
- IAM

Using Terraform makes the infrastructure configuration version-controlled and reproducible.

## 📁 Project Structure

```text
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
```

## 💡 Key Learning Outcomes

Through this project I practiced:

- Deploying a website using AWS.
- Working with Amazon S3 and CloudFront.
- Building a serverless backend using API Gateway, Lambda and DynamoDB.
- Managing AWS IAM permissions.
- Implementing least-privilege access.
- Using Terraform for Infrastructure as Code.
- Configuring GitHub Actions CI/CD.
- Using GitHub OIDC for secure AWS authentication.
- Working with CloudFront caching and invalidation.
- Connecting frontend JavaScript with a serverless API.
- Designing a cloud architecture with cost awareness.

## 💰 Cost Awareness

The architecture avoids always-running infrastructure such as:

- EC2 instances
- RDS databases
- NAT Gateways
- EKS clusters

The application primarily uses serverless and managed AWS services.

AWS usage should still be monitored because pricing and free-tier limits can change.

## 🔗 Repository

GitHub:

https://github.com/akshayshendurkar55-dot/cloud-resume-challenge

## 👨‍💻 Author

**Laxmikant Shendurkar**

Cloud & DevOps Engineer

GitHub:  
https://github.com/akshayshendurkar55-dot

LinkedIn:  
https://www.linkedin.com/in/laxmikant-shendurkar-b34b3622a/