module "sandbox_quota_keneaft_prod_2025_09_28" {
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = "keneaft+prodCluster2025-0sunday2025-last@gmail.com"  # NEW unique email
    AccountName               = "sg-quota-prod-like-28-09-last-trial"           # NEW unique name
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }
  account_tags = {
    Environment = "Testing"
  }
  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Production-like validation of multi-region security-group quota automation"
  }
  custom_fields = {
    expected_quota     = "200 security-group rules per region"
    automation_version = "v1.1-prod"
    validation_type    = "comprehensive"
    retry_logic        = "2-hour-timeout"
    test_regions       = "us-east-1,eu-west-2,ap-southeast-1"
  }
  account_customizations_name = ""
}