provider "google" {
  project     = "dariolah"
  region      = "southamerica-east1"
  zone        = "southamerica-east1-a"
  credentials = file("serviceaccount.yaml")
}

resource "google_folder" "Financial" {
  display_name = "Financial"
  parent       = "organizations/982946455811"
}

resource "google_folder" "SalesForce" {
  display_name = "SalesForce"
  parent       = google_folder.Financial.name
}

resource "google_folder" "Development" {
  display_name = "Development"
  parent       = google_folder.SalesForce.name
}

resource "google_folder" "Production" {
  display_name = "Production"
  parent       = google_folder.SalesForce.name
}

resource "google_folder" "Test" {
  display_name = "Test"
  parent       = google_folder.SalesForce.name
}


resource "google_project" "dariolah-financial-sales-dev" {
  name                = "SalesForce-Dev"
  project_id          = "dariolah-financial-sf-dev"
  folder_id           = google_folder.Development.name
  auto_create_network = false
  billing_account     = "01DC28-ACC681-45D207"

}

resource "google_project" "dariolah-financial-sales-prod" {
  name                = "SalesForce-Prod"
  project_id          = "dariolah-financial-sf-prod"
  folder_id           = google_folder.Production.name
  auto_create_network = false
  billing_account     = "01DC28-ACC681-45D207"
}

resource "google_project" "dariolah-financial-sales-test" {
  name                = "SalesForce-Test"
  project_id          = "dariolah-financial-sf-test"
  folder_id           = google_folder.Test.name
  auto_create_network = false
  billing_account     = "01DC28-ACC681-45D207"
}
