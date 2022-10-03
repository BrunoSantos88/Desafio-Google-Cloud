provider "google" {
  project = "bootcamp-363315"
  region  = "us-central1"
  zone    = "us-central1-c"
  credentials = "${file("iam.json")}"
}

resource "google_folder" "Financeiro" {
  display_name = "Financeiro"
  parent       = "organizations/657181915271"
}

resource "google_folder" "SalesForce" {
  display_name = "SalesForce"
  parent       = google_folder.Financeiro.name
}

resource "google_folder" "Desenvolvimento" {
  display_name = "Desenvolvimento"
  parent       = google_folder.SalesForce.name
}

resource "google_folder" "Producao" {
  display_name = "Producao"
  parent       = google_folder.SalesForce.name
}


resource "google_project" "barberosa2-salesforce-dev" {
  name       = "SalesForce-Dev"
  project_id = "barberosa2-salesforce-dev"
  folder_id  = google_folder.Desenvolvimento.name
  auto_create_network=false
  billing_account = "9476-7329-2165-1001"

}

