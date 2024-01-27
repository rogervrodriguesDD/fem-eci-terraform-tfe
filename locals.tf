locals {
  project = {
    "fem-eci-project" = {
      description = "Example project for an enterprise level cloud infra"
    }
  }


  workspace = {
    "fem-eci-tfe" = {
      description         = "Example of a description here"
      project_id          = module.project["fem-eci-project"].id
      execution_mode      = "remote"
      vcs_repo_identifier = "rogervrodriguesDD/fem-eci-terraform-tfe"
    }

    "fem-eci-github" = {
      description         = "Example of a description here"
      project_id          = module.project["fem-eci-project"].id
      execution_mode      = "local"
      vcs_repo_identifier = "rogervrodriguesDD/fem-eci-terraform-github"
    }
  }

}
