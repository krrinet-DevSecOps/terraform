variable "env_name" {
  type = string
  default = "tools"
}

variable "ami_name" {
  type = string
  default = "DevOps-LabImage-RHEL9"
}

variable "sg_name" {
  type = string
  default = "b60-allow-all"
}

variable "domain_name" {
  type = string
  default = "krrinet.online"
}

variable "tools" {
    default = {
        vault = {
            instance_type = "t3.micro"
            internal = false
        }
        # gh-runner = {
        #     instance_type = "t3.medium"
        # }
    }
}

variable "vault_token" {}
