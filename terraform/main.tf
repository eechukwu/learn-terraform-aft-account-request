module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+sandboxaft@gmail.com"
    AccountName               = "sandbox-aft-2"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "eechukwuawslab+sandboxaft-2@gmail.com"
    SSOUserFirstName          = "eechukwuawslab+sandboxaft-2"
    SSOUserLastName           = "eechukwuawslab2"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
