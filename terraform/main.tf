module "sandbox_with_customizations_2025_09_30" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "keneaft+customtest2025starboy@gmail.com"
    AccountName               = "sg-quota-custom-test-202528septstarboy"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }
  
  account_tags = {
    Environment = "Testing"
    Purpose     = "ApprovalGatesValidation"
  }
  
  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Testing approval gates with account customizations"
  }
  
  custom_fields = {
    test_type          = "full-pipeline-with-customizations"
    approval_gates     = "enabled"
  }
  
  account_customizations_name = "sandbox"
}