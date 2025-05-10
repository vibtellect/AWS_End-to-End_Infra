# 🚀 AWS Data Processing Infrastructure

**Modern, secure & automated AWS Cloud setup – ready for your business.**

---

> 🇩🇪 [Deutsche Version lesen](README_de.md)

---

## 🌟 Why Choose This Project?
- **Best Practices**: Secure VPC, public/private subnets, S3 with versioning, serverless Lambda
- **Automated & Scalable**: Infrastructure-as-Code (Terraform) – fast, repeatable, reliable
- **Business Value**: Modular, extensible, and ready for real-world use

## 🛠️ Technical Overview
- **Networking**: AWS VPC with isolated public/private subnets, S3 VPC Endpoint for private access
- **Storage**: S3 bucket with versioning, `input/` and `processed/` folders
- **Compute**: Lambda (Python), processes files from S3 `input/` to `processed/`
- **Security**: IAM least privilege, no public Lambda, all logs in CloudWatch

## 🚦 Quick Start
1. **Prerequisites:** AWS CLI, Terraform
2. **Deploy Infrastructure:**
   ```bash
   terraform init
   terraform apply
   ```
3. **Upload a File:** Place a text file in the S3 bucket's `input/` folder
4. **Invoke Lambda:**
   - Manually via AWS CLI:
     ```bash
     aws lambda invoke --function-name <lambda_name> --cli-binary-format raw-in-base64-out --payload '{"Records":[{"s3":{"bucket":{"name":"<bucket_name>"},"object":{"key":"input/test.txt"}}}]}' output.json
     ```
   - Or trigger automatically (if S3 trigger is enabled)
5. **Check Results:** Processed file appears in `processed/` folder; logs in CloudWatch

## 🧑‍💻 How It Works
1. **File Upload:** User uploads a file to S3 `input/`
2. **Processing:** Lambda reads, processes (e.g. uppercase), and writes to `processed/`
3. **Security:** All resources are private, S3 traffic stays internal via VPC Endpoint

---

**Looking for a freelancer who delivers secure, modern AWS solutions?**
This project is the perfect starting point for your next cloud initiative.
