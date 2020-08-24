# Create single VSI in dal09. Hourly billed with private network connection only. 

variable "softlayer_username" {
  description = "vijaylakshmi"
}

variable "softlayer_api_key" {
  description = "1251e62e5fb5cdc028c094e4cbd455681ede1eeaf1955d1631bc4466e474f2c7"
}

variable "ibmcloud_api_key" {
  description = "WwgSeCY0-VWRKtug6cRBtayYjBHTR2lNyryWvfoIMtRr"
}

provider "ibm" {
  softlayer_username = var.softlayer_username
  softlayer_api_key  = var.softlayer_api_key
  ibmcloud_api_key   = var.ibmcloud_api_key
}
terraform {
  required_providers {
    ibm = {
      source = "github.com/IBM-Cloud/terraform-provider-ibm/ibm"
      version = "1.10.0"
    }
  }
  required_version = ">= 0.13"
  
}


resource "ibm_compute_vm_instance" "vm1" {
  hostname             = "vm1"
  domain               = "example.com"
  os_reference_code    = "CENTOS_7_64"
  datacenter           = "dal09"
  network_speed        = 100
  hourly_billing       = true
  private_network_only = true
  cores                = 1
  memory               = 1024
  disks                = [25]
  local_disk           = false
}
