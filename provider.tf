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

