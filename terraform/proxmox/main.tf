provider "proxmox" {
  pm_api_url = ""
  pm_password = ""
  pm_user = ""
}

variable "ssh_pub_key" {
  description = "The Public Key used for provisioned VMs using Cloud-Init"
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCj1gifke01Y8q//2vvyYVWy1ttMgO/P0TADw3bQDEdsqH+4wU2T3RugpgurTlgQGZ7ZVKW/Xipemrwmow4Y10tdJl+9mWKZOOBqyLS7wQZ1tlhvTymvqD8/OaJF9SmLR0e2kGO8VConaVRDI0e2g6xci2VdayBTb2NE7WyrDTAC47Jjjf4J2nVuSEFUdVyex9aKsjrEiut/wFhbL+FawpJ17uYMZZV2sXPRHXXAwILvE3zpa/rL/MWvQMJcaswqVxwBS1UlRpCB3lXTq/kTjLoa4upXe0ks8+8S3LS0scHIiCsMhUsy6tGWx0AhYJ1/l+K/9TU1B97QBGnAsAe7LFn info@felix-klauke.de"
}

resource "proxmox_vm_qemu" "proxmox_vm" {
  count             = 1
  name              = "tf-vm-01"
  target_node       = "eva"
  clone             = "ubuntu-20.10-groovy-gorilla"
  os_type           = "cloud-init"
  cores             = 4
  sockets           = "1"
  cpu               = "kvm64"
  memory            = 2048
  scsihw            = "virtio-scsi-pci"
  bootdisk          = "scsi0"
  disk {
    id              = 0
    size            = 20
    type            = "scsi"
    storage         = "local-zfs"
    storage_type    = "zfspool"
    iothread        = true
  }
  network {
    id              = 0
    model           = "virtio"
    bridge          = "vmbr0"
  }
  ipconfig0 = "ip=37.114.59.201/24,gw=37.114.59.1"
  sshkeys = <<EOF
  ${var.ssh_pub_key}
  EOF
}
