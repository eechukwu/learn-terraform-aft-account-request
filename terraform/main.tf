module "sandbox_quota_keneaft_prod_2025_07_10" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+prodCluster2025-0778@gmail.com"      # unique via plus addressing
    AccountName               = "sg-quota-prod-like-12-07-2025"
    ManagedOrganizationalUnit = "Sandbox"

    SSOUserEmail              = "keneaft@gmail.com"          # reuse or change
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Prod-Like-Validation"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-10"
    TestPhase   = "Prod-Like-Validation"
    Regions     = "us-east-1,eu-west-2,ap-southeast-1"
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


module "sandbox_quota_keneaft_prod_2025_09_26" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+prodCluster2025-0926@gmail.com"  # NEW unique email
    AccountName               = "sg-quota-prod-like-26-09-2025"           # NEW unique name
    ManagedOrganizationalUnit = "Sandbox"

    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Prod-Like-Validation"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-09-26" # Updated date for this request
    TestPhase   = "Prod-Like-Validation"
    Regions     = "us-east-1,eu-west-2,ap-southeast-1"
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