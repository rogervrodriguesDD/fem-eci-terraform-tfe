module "project" {
  source  = "ALT-F4-LLC/project/tfe"
  version = "0.5.0"

  description = ""
  name = "fem-eci-project"
  organization_name = var.organization_name
}

module "workspace" {
  source  = "ALT-F4-LLC/workspace/tfe"
  version = "0.8.0"

  description = ""
  execution_mode = "local"
  name = "fem-eci-project"
  organization_name = var.organization_name
  project_id = module.project.id
}

