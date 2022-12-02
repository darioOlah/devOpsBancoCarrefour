provider "googleworkspace" {
  credentials             = file("serviceaccount.yaml")
  customer_id             = "informaraqui"
  impersonated_user_email = "adm@omdracing.com.br"
  oauth_scopes = [
    "https://www.googleapis.com/auth/admin.directory.user",
    "https://www.googleapis.com/auth/admin.directory.userschema",
    "https://www.googleapis.com/auth/admin.directory.group",
    # include scopes as needed
  ]
}

resource "googleworkspace_group" "engineer" {
  email       = "engineer@omdracing.com.br"
  name        = "Engineer"
  description = "Engineer Group"

  aliases = ["eng@omdracing.com.br"]

  timeouts {
    create = "1m"
    update = "1m"
  }
}

resource "googleworkspace_user" "dario" {
  primary_email = "dario@omdracing.com.br"
  password      = "34819d7beeabb9260a5c854bc85b3e44"
  hash_function = "MD5"

  name {
    family_name = "Olah"
    given_name  = "Dário"
  }
}

resource "googleworkspace_group_member" "manager" {
  group_id = googleworkspace_group.engineer.id
  email    = googleworkspace_user.dario.primary_email

  role = "MANAGER"
}
