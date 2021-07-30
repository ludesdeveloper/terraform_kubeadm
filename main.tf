provider "aws" {
  region     = "ap-southeast-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

module "cluster" {
  source = "./terraform-aws-kubeadm"
}

output "elb" {
  value = module.cluster.elb
}

output "master_public_ip" {
  value = module.cluster.master_public_ip
}

output "worker_0_public_ip" {
  value = module.cluster.worker_0_public_ip
}

output "worker_1_public_ip" {
  value = module.cluster.worker_1_public_ip
}
