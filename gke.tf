resource "google_container_cluster" "testcluster" {
  name               = "testcluster"
  enable_autopilot   = true
  location           = var.gcp_region
  network            = "k8s-vpc"
  subnetwork         = "k8s-subnet"
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/17"
    services_ipv4_cidr_block = "/22"
  }
  release_channel {
    channel = "REGULAR"
  } 
}

resource "google_container_cluster" "stagingcluster" {
  name               = "stagingcluster"
  enable_autopilot   = true
  location           = var.gcp_region
  network            = "k8s-vpc"
  subnetwork         = "k8s-subnet"
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/17"
    services_ipv4_cidr_block = "/22"
  }
  release_channel {
    channel = "REGULAR"
  }
}

resource "google_container_cluster" "prodcluster" {
  name               = "prodcluster"
  enable_autopilot   = true
  location           = var.gcp_region
  network            = "k8s-vpc"
  subnetwork         = "k8s-subnet"
  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "/17"
    services_ipv4_cidr_block = "/22"
  }
  release_channel {
    channel = "REGULAR"
  }
}