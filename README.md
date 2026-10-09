# AWS Cloud Resume Challenge

A cloud-hosted developer portfolio built to demonstrate practical skills in **AWS, Terraform, Serverless Architecture, GitHub Actions CI/CD, and CloudFront**.

This project combines a responsive portfolio website with a serverless visitor counter and Infrastructure as Code.

---

## 🌐 Live Demo

https://d215msjd79hcy2.cloudfront.net/

---

## 📌 Project Overview

This project is a cloud-hosted portfolio website deployed on AWS.

The website is stored in **Amazon S3** and delivered through **Amazon CloudFront**.

A serverless visitor counter is implemented using:

- Amazon API Gateway
- AWS Lambda
- Amazon DynamoDB

The AWS infrastructure is provisioned and managed using **Terraform**.

GitHub Actions automates website deployment whenever changes are pushed to the `main` branch.

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
```

### Visitor Counter Architecture

```text
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
```

---

## ☁️ AWS Services Used

| AWS Service | Purpose |
|---|---|
| Amazon S3 | Stores the portfolio website |
| Amazon CloudFront | CDN and HTTPS delivery |
| AWS Lambda | Serverless visitor counter logic |
| Amazon DynamoDB | Stores visitor count |
| Amazon API Gateway | HTTP API for the visitor counter |
| AWS IAM | Access control and permissions |
| AWS WAF | Web application protection |
| Amazon CloudWatch | Logging and monitoring |
| AWS IAM OIDC | Secure GitHub Actions authentication |

---

## 🛠️ Technologies

### Frontend

- HTML5
- CSS3
- JavaScript

### Cloud & DevOps

- AWS
- Terraform
- Git
- GitHub
- GitHub Actions
- Serverless Architecture

### Programming & Scripting

- Python
- JavaScript

---

## 🚀 CI/CD Pipeline

GitHub Actions automates the deployment of website changes.

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

### Deployment Process

Whenever code is pushed to the `main` branch:

1. GitHub Actions starts automatically.
2. The repository is checked out.
3. GitHub authenticates with AWS using OIDC.
4. Website files are synchronized to Amazon S3.
5. CloudFront cache is invalidated.
6. The updated website becomes available through CloudFront.

No long-lived AWS access keys are stored in GitHub Actions.

### Infrastructure vs Deployment

Terraform is used to **provision and manage AWS infrastructure**.

GitHub Actions is used to **automate website deployment**.

These are separate processes: Terraform manages infrastructure, while the workflow deploys website files and invalidates the CloudFront cache.

---

## 👀 Serverless Visitor Counter

The portfolio includes a dynamic visitor counter.

The frontend sends a request to API Gateway. API Gateway invokes the Lambda function, which updates the visitor count in DynamoDB and returns the result to the browser.

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
    |
    v
Browser
```

---

## 🔐 Security

The project is designed with security considerations that include:

- CloudFront Origin Access Control (OAC) for access to S3.
- HTTPS delivery through CloudFront.
- AWS WAF for web application protection.
- A dedicated IAM role for Lambda.
- Restricted DynamoDB permissions for the Lambda function.
- GitHub Actions authentication through AWS OIDC instead of long-lived AWS access keys.
- Infrastructure and deployment configuration maintained in version control.
- Least-privilege IAM permissions where configured.

Review the Terraform configuration to verify which security controls are currently provisioned and enabled.

---

## 🏗️ Infrastructure as Code

AWS infrastructure is managed using **Terraform**.

The configuration is organized into files for different infrastructure components:

```text
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
```

The Terraform configuration covers infrastructure such as:

- Amazon S3
- Amazon CloudFront
- AWS Lambda
- Amazon DynamoDB
- Amazon API Gateway
- AWS IAM

Terraform helps keep infrastructure definitions version-controlled and makes infrastructure changes easier to review and reproduce.

---

## 📁 Project Structure

```text
cloud-resume-challenge/
├── .github/
│   └── workflows/
│       └── deploy.yml
├── assets/
├── css/
│   └── style.css
├── js/
│   └── script.js
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
├── .gitignore
├── index.html
└── README.md
```

---

## 💡 Key Learning Outcomes

Through this project, I practiced:

- Deploying a website using AWS.
- Working with Amazon S3 and CloudFront.
- Understanding CDN caching and invalidation.
- Building a serverless backend using API Gateway, Lambda and DynamoDB.
- Managing AWS IAM permissions.
- Using Terraform for Infrastructure as Code.
- Configuring GitHub Actions for website deployment.
- Using GitHub OIDC for AWS authentication.
- Connecting frontend JavaScript with a serverless API.
- Understanding AWS service integration.
- Considering security and cost while designing cloud infrastructure.

---

## 💰 Cost Awareness

Cost control is an important consideration for this project.

The architecture avoids continuously running infrastructure such as EC2 instances, RDS databases, NAT Gateways and EKS clusters.

Serverless and managed services can still incur charges depending on usage, configuration and current pricing. AWS usage should be monitored regularly, and resources that are no longer needed should be removed.

Before creating or changing resources, review current AWS pricing and Free Tier eligibility. Do not assume every service or configuration is free.

---

## 🔗 Repository

GitHub: [cloud-resume-challenge](https://github.com/akshayshendurkar55-dot/cloud-resume-challenge)

---

## 👨‍💻 Author

**Laxmikant Shendurkar**

B.Tech CSE Student | Aspiring Cloud & DevOps Engineer

- GitHub: [akshayshendurkar55-dot](https://github.com/akshayshendurkar55-dot)
- LinkedIn: [Laxmikant Shendurkar](https://www.linkedin.com/in/laxmikant-shendurkar-b34b3622a/)
