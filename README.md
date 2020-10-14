# devops-terraform


This repository contains sample Terraform configuration that can be used to provision a resource group and a storage account static website on Azure.


## Prerequisites

- Install [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
- Install [Terraform](https://learn.hashicorp.com/terraform/getting-started/install)


To run the following sample project you need to login with your Azure account:


```az login```

## Build and run

Create remote state with: 

```
terraform init
```

Run terraform validate command  to validate the configuration files in a directory:

```
terraform validate
```

Run terraform plan to verify creation process and then terraform apply to create real resources:

```
terraform plan
terraform apply
```

After executing the apply command you will get a prompt that will ask if you want to create it, enter `yes`. 

