terraform {
  cloud {
    organization = "rrhome"

    workspaces {
      name = "fem-eci-project"
    }
  }
}
