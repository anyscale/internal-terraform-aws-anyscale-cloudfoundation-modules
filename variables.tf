# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# ---------------------------------------------------------------------------------------------------------------------

# AWS_ACCESS_KEY_ID
# AWS_SECRET_ACCESS_KEY

# The followings are required variables in the original module.
variable "aws_region" {
  description = "The AWS region in which all resources will be created."
  type        = string
}

variable "customer_ingress_cidr_ranges" {
  description = <<-EOT
    The IPv4 CIDR block that is allowed to access the clusters.
    This provides the ability to lock down the v1 stack to just the public IPs of a corporate network.
    This is added to the security group and allows port 443 (https) and 22 (ssh) access.
    ex: `52.1.1.23/32,10.1.0.0/16`
  EOT
  type        = string
}

variable "my_trusted_role_arns" {
  description = "(Optional) ARNs of AWS entities who can assume these roles."
  type        = list(string)
  default     = ["arn:aws:iam::525325868955:root"]
}
