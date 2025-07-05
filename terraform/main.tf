module "sandbox_quota_test_final" {
  source = "./modules/aft-account-request"
  
  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "eechukwu+quotatest0507@gmail.com"
    AccountName               = "sg-quota-validation-05-07"
    ManagedOrganizationalUnit = "Sandbox"
    # Identity Center (SSO) – Control Tower won't create an account without these
    SSOUserEmail              = "eechukwu@gmail.com"
    SSOUserFirstName          = "Emmanuel"
    SSOUserLastName           = "ChukwuAccount"
  }
  
  # ───── 2. At least one tag (helps you find it in the CT console) ─────
  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-Final-Validation"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-05"
    TestPhase   = "Final-End-to-End"
  }
  
  # ───── 3. Mandatory change-management keys ─────
  change_management_parameters = {
    change_requested_by = "emmanuel.chukwu"
    change_reason       = "Final validation of Security Group quota automation end-to-end"
  }
  
  # ───── 4. Optional fields ─────
  custom_fields               = {
    test_purpose = "final quota automation validation"
    expected_quota = "200 security group rules"
    automation_version = "v1.0-final"
  }
  account_customizations_name = ""  # Global customizations only

}


module "sandbox_quota_test_2025_07_06" {
  source = "./modules/aft-account-request"

  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "eechukwu+quotatest0607@gmail.com"   # unique email
    AccountName               = "sg-quota-validation-06-07"          # globally-unique name
    ManagedOrganizationalUnit = "Sandbox"

    # Identity Center (SSO) – Control Tower needs these
    SSOUserEmail              = "eechukwu@gmail.com"
    SSOUserFirstName          = "Emmanuel"
    SSOUserLastName           = "Chukwu"
  }

  # ───── 2. Tags (helps tracking in CT & billing) ─────
  account_tags = {
    Environment = "Testing"
    Purpose     = "Security-Group-Quota-E2E-Validation"
    Project     = "AFT-Quota-Automation"
    TestDate    = "2025-07-06"
    TestPhase   = "Final"
  }

  # ───── 3. Mandatory change-management keys ─────
  change_management_parameters = {
    change_requested_by = "emmanuel.chukwu"
    change_reason       = "Request new sandbox account to re-run SG-quota automation validation"
  }

  # ───── 4. Optional custom fields ─────
  custom_fields = {
    test_purpose      = "final quota automation validation"
    expected_quota    = "200 security-group rules"
    automation_version = "v1.0-final"
  }

  # Leave blank → global customisations only
  account_customizations_name = ""
}