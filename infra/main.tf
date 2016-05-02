provider "google" {
  credentials = "${file("${var.gcloud_credentials}")}"
  project = "${var.gcloud_project}"
  region = "${var.gcloud_region}"
}

resource "google_container_cluster" "primary" {
  name = "${var.cluster_name}"
  description = "${var.cluster_description}"
  zone = "${var.gke_zone}"
  initial_node_count = "3"

  master_auth {
    username = "${var.username}"
    password = "${var.password}"
  }

  node_config {
    machine_type = "f1-micro"
    disk_size_gb = "100"
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
}
