data "external" "zone" {
program = ["bash", "${path.root}/route53"]
}


module "minikube" {
  source = "github.com/scholzj/terraform-aws-minikube"

  aws_region            = "us-east-1"
  cluster_name          = "minikube"
  aws_instance_type     = "t3.medium"
  ssh_public_key        = "~/.ssh/id_rsa.pub"
  aws_subnet_id         = element(lookup(module.vpc, "public_subnets", null), 0)
  hosted_zone           = data.external.zone.result.id
  hosted_zone_private   = false

  tags = {
    Name = "minikube"
  }

  addons = [
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
    "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
  ]
}