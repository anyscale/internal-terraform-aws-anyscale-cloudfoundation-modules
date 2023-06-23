module "anyscale-cloudfoundation-modules_example_anyscale-v2-commonname" {
  source  = "anyscale/anyscale-cloudfoundation-modules/aws//examples/anyscale-v2-commonname"
  version = "0.12.0"

  # Variables required in original module.
  customer_ingress_cidr_ranges = var.customer_ingress_cidr_ranges
  aws_region = var.aws_region
}

module "anyscale-cloudfoundation-modules_aws-anyscale-iam" {
  source  = "anyscale/anyscale-cloudfoundation-modules/aws//modules/aws-anyscale-iam"
  version = "0.12.0"

  # Passing the new variable to the module
  anyscale_trusted_role_arns = var.my_trusted_role_arns
}

