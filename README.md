# Infrastructure-Adventure

Welcome to the Infrastructure-Adventure repository! This project is a part of my DevOps Adventure, and serves as the backbone of my cloud infrastructure. Here, I've used Terraform and GitHub Actions to automate the deployment of cloud resources required for my DevOps portfolio.

## Technologies Used

- [Terraform](https://www.terraform.io/) for automated provisioning of cloud resources.
- [GitHub Actions](https://docs.github.com/en/actions) for continuous integration and deployment.
- [Azure](https://azure.microsoft.com/en-us/) as the cloud provider in which we are deploying the cloud resources.
- [Azure Storage Accounts](https://docs.microsoft.com/en-us/azure/storage/common/storage-account-overview) for storing Terraform state.

## Usage

To replicate the capabilities of this repository, you can fork this repo and follow the steps below:

### Requirements

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) installed on your computer.

### Steps

1. Create an Azure storage account container to store the Terraform state by running the following commands in your Azure CLI:

`az group create -n tfstates -l eastus`

`az storage account create -n <ACCOUNTNAME> -g tfstates -l eastus2 --sku Standard_LRS`

`az storage container create -n tfstate --account-name <ACCOUNTNAME>`

2. Create an SPN (Service Principal Name) by running the following command:

`az ad sp create-for-rbac --name <SPNNAME> --role Contributor --scopes /subscriptions/<SUBSCRIPTIONID>`

3. Fork this repository and create repository secrets by going to the GitHub repository settings > Secrets and Variables > Actions. On the Repository Variables section, create the following variables:

`ARM_CLIENT_ID = <spn client ID>`
`ARM_CLIENT_SECRET= <SPN password>`
`ARM_SUBSCRIPTION_ID = <Azure Subscription ID>`
`ARM_TENANT_ID = <SPN tenant ID>`
`CONTAINER_NAME = tfstate`
`RESOURCE_GROUP = tfstate`
`STORAGE_ACCOUNT = <ACCOUNTNAME>`

Note: You can also modify the `variables.tf` file in the `terraform` folder to set your own variable names.

4. Make changes to the infrastructure by modifying the `main.tf` file under the `terraform` folder.

5. Create a branch off of the main branch, apply the changes for the needed infrastructure on the `main.tf`, and then create a pull request to the original repository. The pull request will validate the changes to prevent/mitigate failures. If everything passes, the changes will be applied and deployed through GitHub Actions on merging.

## Project Structure

The `main.tf` file contains the Terraform configuration code for the resource group deployment in Azure. The `workflow.yml` file is the GitHub Actions workflow that is triggered when changes are pushed to the repository. This workflow sets up the environment, authenticates to Azure using an SPN (Service Principal Name), and runs Terraform commands to validate, plan, and apply the infrastructure changes.

## Future Enhancements/Features

- Adding resource deletion functionality using Terraform and GitHub Actions.

## About Me

I am a skilled DevOps engineer and full-stack developer with 3 years of experience in the industry. I have worked on a wide range of projects, from small-scale startups to large enterprise organizations, and have a proven track record of delivering high-quality, reliable solutions. With my DevOps Adventure, you can get a firsthand look at my skills and experience, and see why I am the right candidate for your next DevOps project.

Thank you for checking out my Infrastructure-Adventure repository! I hope you find it useful and informative.

`
