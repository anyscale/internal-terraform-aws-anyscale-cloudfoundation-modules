# Purpose
This is based on https://github.com/anyscale/terraform-aws-anyscale-cloudfoundation-modules, with more variables.
Basically for internal integration tests.

This pins the modules in https://registry.terraform.io/modules/anyscale/anyscale-cloudfoundation-modules/aws/latest.
If the version in registry changed, the version in main.tf need to be manually updated.
(Frequency right now would be once per month, in future we expect the version to be a stable one)

# Variables
**anyscale_trusted_role_arns**: added for the integration test "test_cloud_terraform" in product repo, the test run in staging environment so we need to override this variable to staging aws account. The default one in this repo is the staging aws account.
