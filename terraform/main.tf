module "sandbox" {
  source = "./modules/aft-account-request"

  # ───── 1. Control Tower parameters (all 6 are required) ─────
  control_tower_parameters = {
    AccountEmail              = "chukwu.emmanuel+sandbox@aol.com"
    AccountName               = "sandbox-kene"
    ManagedOrganizationalUnit = "Sandbox"

    # Identity Center (SSO) – Control Tower won’t create an account without these
    SSOUserEmail              = "chukwu.emmanuel+sandbox@aol.com"
    SSOUserFirstName          = "James"
    SSOUserLastName           = "KeneMark"
  }

  # ───── 2. At least one tag (helps you find it in the CT console) ─────
  account_tags = {
    Environment = "Sandbox"
  }

  # ───── 3. Mandatory change-management keys (free-text is fine) ─────
  change_management_parameters = {
    change_requested_by = "automation script"
    change_reason       = "initial create"
  }

  # ───── 4. Optional fields – keep them, just leave them empty ─────
  custom_fields               = {}           # can stay empty
  account_customizations_name = ""           # no per-account customisations yet
}