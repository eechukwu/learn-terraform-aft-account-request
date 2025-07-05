module "sandbox_quota_test_2025_07_07" {
  source = "./modules/aft-account-request"
  
  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "eechukwu+quotatest0707@gmail.com"
    AccountName               = "sg-quota-validation-07-07"
    ManagedOrganizationalUnit = "Sandbox"
    # Identity Center (SSO) – Control Tower won't create an account without these
    SSOUserEmail              = "eechukwu@gmail.com"
    SSOUserFirstName          = "Emmanuel"
    SSOUserLastName           = "Chukwu"
  }
  
  # ───── 2. At least one tag (helps you find it in the CT console) ─────
  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Multi-Region-Test"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-07"
    TestPhase   = "Multi-Region-Validation"
    Regions     = "us-east-1,eu-west-2,ap-southeast-1"
  }
  
  # ───── 3. Mandatory change-management keys ─────
  change_management_parameters = {
    change_requested_by = "emmanuel.chukwu"
    change_reason       = "Testing multi-region Security Group quota automation with validation scripts"
  }
  
  # ───── 4. Optional fields ─────
  custom_fields = {
    test_purpose       = "multi-region quota automation validation"
    expected_quota     = "200 security group rules per region"
    automation_version = "v1.0-production-ready"
    test_regions       = "us-east-1,eu-west-2,ap-southeast-1"
    validation_scripts = "enabled"
  }
  account_customizations_name = ""  # Global customizations only
}

module "sandbox_quota_test_2025_07_08" {
  source = "./modules/aft-account-request"
  
  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "eechukwu+quotatest0807@gmail.com"
    AccountName               = "sg-quota-validation-08-07"
    ManagedOrganizationalUnit = "Sandbox"
    # Identity Center (SSO) – Control Tower needs these
    SSOUserEmail              = "eechukwu@gmail.com"
    SSOUserFirstName          = "Emmanuel"
    SSOUserLastName           = "Chukwu"
  }
  
  # ───── 2. Tags (helps tracking in CT & billing) ─────
  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Final-Production-Test"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-08"
    TestPhase   = "Production-Ready-Validation"
    Regions     = "us-east-1,eu-west-2,ap-southeast-1"
  }
  
  # ───── 3. Mandatory change-management keys ─────
  change_management_parameters = {
    change_requested_by = "emmanuel.chukwu"
    change_reason       = "Final production-ready validation of Security Group quota automation system"
  }
  
  # ───── 4. Optional custom fields ─────
  custom_fields = {
    test_purpose       = "production-ready quota automation validation"
    expected_quota     = "200 security-group rules per region"
    automation_version = "v1.0-production"
    test_regions       = "us-east-1,eu-west-2,ap-southeast-1"
    validation_type    = "comprehensive-multi-region"
    retry_logic        = "2-hour-timeout"
  }
  
  # Leave blank → global customizations only
  account_customizations_name = ""
}

module "sandbox_quota_test_2025_07_05_fresh" {
  source = "./modules/aft-account-request"
  
  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "eechukwu+quotatest0507fresh@gmail.com"
    AccountName               = "sg-quota-fresh-test-05-07"
    ManagedOrganizationalUnit = "Sandbox"
    # Identity Center (SSO) – Control Tower won't create an account without these
    SSOUserEmail              = "eechukwu@gmail.com"
    SSOUserFirstName          = "Emmanuel"
    SSOUserLastName           = "Chukwu"
  }
  
  # ───── 2. Tags for tracking ─────
  account_tags = {
    Environment        = "Testing"
    Purpose           = "Security-Group-Quota-Fresh-Test"
    Project           = "AFT-Quota-Automation"
    TestDate          = "2025-07-05"
    TestPhase         = "Fresh-Account-Global-Customizations"
    ExpectedQuota     = "200"
    TestRegions       = "us-east-1,eu-west-2,ap-southeast-1"
    TestType          = "EndToEnd"
  }
  
  # ───── 3. Mandatory change-management keys ─────
  change_management_parameters = {
    change_requested_by = "emmanuel.chukwu"
    change_reason       = "Fresh account creation to test Security Group quota automation via AFT Global Customizations"
  }
  
  # ───── 4. Custom fields for this test ─────
  custom_fields = {
    test_purpose          = "fresh global customizations test"
    expected_quota_value  = "200 security group rules"
    automation_version    = "v1.0-final"
    test_regions          = "us-east-1,eu-west-2,ap-southeast-1"
    validation_enabled    = "true"
    retry_logic          = "5min-intervals-2hr-timeout"
    creation_timestamp   = "2025-07-05T23:00:00Z"
  }
  
  # ───── 5. Force global customizations ─────
  account_customizations_name = ""  # Empty = global customizations only
}