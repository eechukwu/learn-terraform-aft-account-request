module "sandbox_quota_keneaft_prod_2025_07_10" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "keneaft+prodCluster2025-07@gmail.com"      # unique via plus addressing
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

module "sandbox_quota_keneaft_test_2025_07_10_v2" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "keneaft+quotaTest2@gmail.com"         # New unique email
    AccountName               = "sg-quota-validation-v2-10-07-2025"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }
  
  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-V2-Testing"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-10"
    TestPhase   = "Secondary-Validation"
    Regions     = "us-west-1,eu-central-1,ap-northeast-1"             # Different regions
    TestRound   = "Round-2"
  }
  
  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Secondary testing environment for quota automation edge cases and failure scenarios"
  }
  
  custom_fields = {
    expected_quota           = "500 security-group rules per region"   # Higher quota for stress testing
    automation_version       = "v1.2-test"
    validation_type          = "edge-case-testing"
    retry_logic             = "3-hour-timeout"
    test_regions            = "us-west-1,eu-central-1,ap-northeast-1"
    quota_service_code      = "ec2"
    quota_code              = "L-0EA8095F"
    notification_email      = "keneaft@gmail.com"
    monitoring_frequency    = "5-minutes"                              # More frequent monitoring
    alarm_threshold         = "error-rate-gt-1"
    test_scenario           = "high-load-multi-region"
  }
  
  account_customizations_name = ""
}