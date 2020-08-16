# Blog
Resources regarding Blog Articles of the Klauke Enterprises [Blog](https://blog.klauke-enterprises.com)

## GitOps with Terraform
While infrastructure is often maintained manually and decentralized the GitOps approach aims to consolidate a declarative configuration of your infrastructure
inside your project source code. This leads to Infrastructure as Code at its best: All your infrastructure is handled as Code along with your common source code.  

This enables some interesting options:
- Reviewing your infrastructure changes is as easy as creating a pull request
- The infrastructure is much closer to the developers (DevOps)
- You have a complete history of your infrastructure, its changes and its current state

### Terraform Proxmox
It's rather simple to deploy virtual machines with terraform in proxmox. You can find the corresponding terraform file [here](terraform/proxmox). You can find a detailed description of this approach in this blog article (german):

[Proxmox mit Terraform: Infrastructure as Code leicht gemacht](https://blog.klauke-enterprises.com/proxmox-terraform-infrastructure-as-code-leicht-gemacht)

### Cloudflare Terraform
In [here](terraform/dns) is shown how to manage your dns records via terraform.
