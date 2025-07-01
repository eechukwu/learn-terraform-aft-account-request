module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "eechukwuawslab+sandeec@gmail.com"
    AccountName               = "eechukwuawslab+sandeec"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "eechukwuawslab+sandeec@gmail.com"
    SSOUserFirstName          = "sandeec"
    SSOUserLastName           = "eechukwuawslab+sandeec"
  }

  # ≤— keep at least ONE tag
  account_tags = {
    Environment = "Sandbox"
  }

  # ≤— ***MANDATORY*** two keys, even if just placeholder text
  change_management_parameters = {
    change_requested_by = "automation"
    change_reason       = "initial create"
  }

  # ≤— Can be empty, but not null
  custom_fields = {}
  
  # ≤— If you don’t use per-account customisations, pass empty string
  account_customizations_name = "Sandbox"
}