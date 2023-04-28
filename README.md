# Registry infrastructure

> This folder contains infrastructure for registry. Start by provisioning infrastructure, then run the script after provision in instance to up the registry

# Prerequisite
- Terraform CLI installation on local machine
- AWS Token: include `ACCESS KEY`, `SECRET KEY` & `TOKEN` (If exists)
- A domain

# Provision infrastructure

1. Create and fill the .tfvars file

    ```
    aws_access_key = 
    aws_secret_key = 
    aws_region = 

    key_pair_name = 
    ```

2. Run Terraform plan to preview infrastructure
    
    ```
    terraform init
    terraform plan --var-file ./.tfvars
    ```

3. Run Terraform apply to start provisioning infrastructure

    ```
    terraform apply --var-file ./.tfvars
    ```

4. Copy instance public ip at output and set DNS A record point to IP address

5. Run [post-provisioning-script](./scripts/post-provisioning.sh) after DNS lookup found records
    

6. Run shell script with 2 variables:
    - Your registered domain 
    - Your email

    ```
    ./scripts/post-provisioning.sh registry.registered-domain.com thinhlh0812@gmail.com
    ```
# How to healthcheck? Go to domain below
```
https://registry.registered-domain.com/v2/_catalog
```