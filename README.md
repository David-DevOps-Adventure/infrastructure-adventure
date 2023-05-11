# Infrastructure-Adventure

Welcome to the Infrastructure-Adventure repository! This project is a part of my DevOps Adventure, and serves as the backbone of my cloud infrastructure. Here, I've used Terraform and GitHub Actions to automate the deployment of cloud resources required for my DevOps portfolio.

## Technologies Used

- [Terraform](https://www.terraform.io/) for automated provisioning of cloud resources.
- [GitHub Actions](https://docs.github.com/en/actions) for continuous integration and deployment.
- [Azure](https://azure.microsoft.com/en-us/) as the cloud provider in which we are deploying the cloud resources.
- [Azure Storage Accounts](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview) for storing Terraform state.

## Current Infrastructure

- **rg-adventure-prod-centralus-01**: This is the production rg that supports the DevOps Adventure portfolio website and the adjacent services that it relies on.

  - **resources**: stapp-frontend-adventure-prod-centralus-01

- **rg-adventure-test-centralus-01**: This is the test rg for the project, and it servers as development/staging environment for the the DevOps Adventure portfolio website and the adjacent services as well as a learning environment to test Azure services.
  - **resources**: stapp-frontend-adventure-test-centralus-01

## Usage

To write infrastructure as code for this project, I follow these steps:

1. **Create a new branch**.
2. **Navigate** to the `terraform` directory and **open** `main.tf`.
3. **Add desired infrastructure as code** to the `main.tf` file.

   - example to add a resource group, I would use the following code:
     `resource "azurerm_resource_group" "rg" {
   name     = "rg-test-adevnture-eastus-01"
   location = "eastus"
   tags = {
      Environment             = "test"
      Deployed_with_Terraform = "true"
   }
}`

4. Commit changes and **create a pull request**.
5. **The Terraform workflow** will run, initializing and **validating your code**. If everything passes, I can merge your pull request.
6. The workflow will run again, initializing, planning, and **applying your changes to deploy the infrastructure**.

## Project Structure

The `main.tf` file contains the Terraform configuration code for the resource group deployment in Azure. The `workflow.yml` file is the GitHub Actions workflow that is triggered when changes are pushed to the repository. This workflow sets up the environment, authenticates to Azure using an SPN (Service Principal Name), and runs Terraform commands to validate, plan, and apply the infrastructure changes.

## Future Enhancements/Features:

- Implement Azure KeyVault to store and inject the secrets to the repository.

## About Me

I am a skilled DevOps engineer and full-stack developer with 3 years of experience in the industry. I have worked on a wide range of projects, from small-scale startups to large enterprise organizations, and have a proven track record of delivering high-quality, reliable solutions. With my DevOps Adventure, you can get a firsthand look at my skills and experience, and see why I am the right candidate for your next DevOps project.

Thank you for checking out my Infrastructure-Adventure repository!

`
