module "sandbox_approval_gates_test_final" {
  source = "./modules/aft-account-request"
  
  control_tower_parameters = {
    AccountEmail              = "keneaft+approvalgates-final2025@gmail.com"
    AccountName               = "aft-approval-gates-test-final2025"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "keneaft@gmail.com"
    SSOUserFirstName          = "Kene"
    SSOUserLastName           = "AFT"
  }
  
  account_tags = {
    Environment = "Testing"
    Purpose     = "ApprovalGatesFinalValidation"
  }
  
  change_management_parameters = {
    change_requested_by = "kene.aft"
    change_reason       = "Final validation of approval gates implementation"
  }
  
  custom_fields = {
    test_type      = "approval-gates-validation"
    deployment     = "fresh-aft-with-correct-ssm"
  }
  
  account_customizations_name = "sandbox"
}