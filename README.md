# How To Build a Node.js Application with Docker: Leveraging The Power Of Terraform

This repository contains scripts to build a node.js application with docker, and Terraform configuration for provisioning the application on an EC2 Ubuntu instance.  

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (version >= 0.12)
- AWS CLI configured with appropriate IAM permissions
- An AWS account.
- Docker installed on your local machine.
- Install the npm utility. 

## Setup

1. **Clone the repository**

   -> git clone https://github.com/Messites/nodejs-aws-docker-terraform.git
   
   -> cd nodejs-aws-docker-terraform

3. **Initialize The Node.js Project**

    -> npm init

4. **Build and Run the Docker Image**

   -> docker build -t t2s-node-app .
   
   -> docker run -p 3000:3000 t2s-node-app 

6. **Start The Node.js App**

   -> npm start
   
3. **Review and modify variables**
    
4. **Initialize, REview, and Deploy**

    -> terraform init
   
    -> terraform plan

    -> terraform apply

5. **Validate**

  -> curl HTTP://localhost:3000  (On the Command Line)

  On the Browser -> HTTP://localhost:3000


7. **Clean up whenever necessary**

    -> terraform destroy


## Troubleshooting
If you encounter any issues, please check the following:

- Ensure your AWS CLI is configured correctly and you have the necessary permissions.
- Verify that your Terraform configurations are correct and all required variables are set.
- Check the AWS Management Console for any errors related to the resources being created.

## Contributing
Feel free to customize this `README.md` file according to your specific requirements and project details.

