# blog
Resources regarding Blog Articles

## GitOps with Terraform
While infrastructure is often maintained manually and decentralized the GitOps approach aims to consolidate a declarative configuration of your infrastructure
inside your project source code. This leads to Infrastructure as Code at its best: All your infrastructure is handled as Code along with your common source code.  

This enables some interesting options:
- Reviewing your infrastructure changes is as easy as creating a pull request
- The infrastructure is much closer to the developers (DevOps)
- You have a complete history of your infrastructure, its changes and its current state

### Cloudflare Terraform

In [here](terraform/dns) is shown how to manage your dns records via terraform.
