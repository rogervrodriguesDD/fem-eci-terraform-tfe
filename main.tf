module "project" {
  source  = "ALT-F4-LLC/project/tfe"
  version = "0.5.0"

  for_each = local.project

  description       = each.value.description
  name              = each.key
  organization_name = var.organization_name
}

module "workspace" {
  source  = "ALT-F4-LLC/workspace/tfe"
  version = "0.8.0"

  for_each = local.workspace

  description       = each.value.description
  name              = each.key
  project_id        = each.value.project_id
  execution_mode    = each.value.execution_mode
  organization_name = var.organization_name

}

# # Used to avoid destroying to recreate things that was just moved
# moved {
#   from = module.workspace["fem-eci-workspace"]
#   to   = module.workspace["fem-eci-tfe"]
# }
