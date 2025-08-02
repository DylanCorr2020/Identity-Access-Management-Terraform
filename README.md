<img width="100%" height="70%" alt="Image" src="https://github.com/user-attachments/assets/70ce7924-4a0a-4c90-9a43-678048abb501" />

# Identity & Access Management with Terraform

This repository provides a modular and scalable way to manage AWS Identity and Access Management (IAM) using Terraform. It defines IAM groups, attaches AWS managed policies, and provisions IAM users into their respective groups.

---

## 📖 Learn More

To learn more about this project, please check out my [Medium post](https://medium.com/@dylancorr.g/how-i-secured-a-startups-aws-account-from-scratch-and-scaled-it-with-terraform-d76781422b18) where I go into more detail about it.

## 🔧 Features

- Modular Terraform code for IAM groups and users
- Uses AWS managed policies for least-privilege access
- Clean separation of responsibilities (Finance, Operations, Analysts)
- Easily extendable for new teams or roles

---

## 📁 Project Structure

<pre> ``` ├── main.tf # Root Terraform configuration 
├── modules/ │ 
├── iam_groups/ # Reusable module for IAM groups │
└── iam_users/ # Reusable module for IAM users 
└── README.md ``` </pre>

## 🚀 IAM Groups and Policies

This setup creates the following IAM groups and assigns appropriate AWS managed policies:

### 🧾 Finance

- `arn:aws:iam::aws:policy/job-function/Billing`

### ⚙️ Operations

- `arn:aws:iam::aws:policy/AmazonEC2FullAccess`
- `arn:aws:iam::aws:policy/AmazonRDSFullAccess`
- `arn:aws:iam::aws:policy/AmazonSSMFullAccess`
- `arn:aws:iam::aws:policy/CloudWatchFullAccess`

### 📊 Analysts

- `arn:aws:iam::aws:policy/AmazonRDSReadOnlyAccess`
- `arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess`

---

## 🛠️ Usage

> **Prerequisites:**
>
> - Terraform v1.0 or higher
> - AWS CLI configured with appropriate IAM credentials

### 1. Clone the repository

```bash
git clone https://github.com/DylanCorr2020/Identity-Access-Management-Terraform.git
cd Identity-Access-Management-Terraform
```

### 2. Initialize Terraform

```bash
     terraform init
```

### 2. Review and apply changes

```bash
     terraform plan
     terrafrom apply
```
