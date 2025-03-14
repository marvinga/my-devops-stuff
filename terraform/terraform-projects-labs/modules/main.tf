provider "aws" {
  region = "ca-central-1"
}

module "ec2module" {
  source = "./ec2"
  ec2name = "Name from Module"
}

output "module_output" {
  value = module.ec2module.instance_id
}