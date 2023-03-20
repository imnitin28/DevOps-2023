# Terraform
- In 2012, AWS came up with the idea of CloudFormation, which automates IT Infra creation on AWS cloud. Since it was AWS's propeitry service/product, it was still not possible to create infra automation on other cloud platforms like Azure, GCP, DigitalOcean etc.

- In mid 2014, Mitchell Hashimoto, came up with the idea of generic tool which will create infrastructure automatically on all cloud platforms. Initially it was only for AWS and DigitalOcean.

- Terraform word came from Science fiction book, which meant create your planet just like earth.

- It became popular in 2017 when Microsoft came up in partnership with Terraform.

- Today Terraform supports 125+ cloud providers.

- Invented by Mitchell Hashimoto.
- Written in Go. Go is developed by Google.
- Terraform is useful in case of Multicloud and Hybrid Cloud.
```
        AWS -> CloudFormation   
        Azure -> ARM Template
        Google Cloud -> Deployment Manager.
        openstack -> Heat
```
- Hybrid Cloud means Private cloud and public cloud e.g AWS.
- Terraform uses HashiCorp Configure Language.

- Terraform is an IaC code
    - IaC is managing and provisiong infrastructure through code.

- provisiong means -> Configuring server as per the requiremnents. allocate resources
- managing means -> deleting, creating, make more reliable and simple.

- IaC is of two types :- </br>
(i) Imperative </br>
    ```
    Imperative:
    step by step
    systematic

    techincally,
    Step 1 - VPC
    Step 2 - Subnet
    Step 3 - IGW
    Step 4 - TR
    ```
(ii) Declarative </br>
    ```
    Declarative:
    No need to provide sequence,
    Just tell what what things you want. System will create things in sequence. Terraform does things logic in backend.

    ```


- CloudFormation is Imperative
- Terraform is Declarative.

```
Terraform vs Ansible

Ansible, chef, puppet are Configuration management tool which means they are primarily designed to install and manage software on the exixting servers.

Terraform, cloudformation etc are IaC tool which are designed to provision servers and infrastructure themselves.
```

- Terraform + Ansible together is deadly combination.

- Benefits of Tf:
    -  supports all cloud platforms.
    - simple language - HCL
    - Easy integration with congif mgmt tool.
    - Tf keeps tracks of real infrastructure in state file.

- Terraform alternative:
    - Ansible(not an IaC but can be used for IaC)


# Terraform Installation
- https://www.terraform.io/
