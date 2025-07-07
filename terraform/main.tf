###############################################################################
# ACCOUNT 1 – DEV VALIDATION (09 Jul 2025)
###############################################################################
module "sandbox_quota_keneaft_dev_2025_07_09" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft@gmail.com"          # brand-new root e-mail
    AccountName               = "sg-quota-dev-09-07"
    ManagedOrganizationalUnit = "Sandbox"

    SSOUserEmail              = "keneaft@gmail.com"          # can reuse
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Dev-Validation"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-09"
    TestPhase   = "Dev-Validation"
    Regions     = "us-east-1,eu-west-2,ap-southeast-1"
  }

  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Dev validation of multi-region security-group quota automation"
  }

  custom_fields = {
    expected_quota     = "200 security-group rules per region"
    automation_version = "v1.1-dev"
    test_regions       = "us-east-1,eu-west-2,ap-southeast-1"
  }

  account_customizations_name = ""
}

###############################################################################
# ACCOUNT 2 – PROD-LIKE VALIDATION (10 Jul 2025)
###############################################################################
module "sandbox_quota_keneaft_prod_2025_07_10" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+prod@gmail.com"      # unique via plus addressing
    AccountName               = "sg-quota-prod-like-10-07"
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