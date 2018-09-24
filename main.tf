
# Manage a VM instance 
resource "google_compute_instance" "datadog" {
  name         = "${var.instance_name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.instance_zone}"

  # The boot disk for the instance
  boot_disk {
    initialize_params {
      image = "${var.instance_image}"
    }
  }

  network_interface {
    network    = "default"
    access_config = {}
  }



  # Startup script uses instance metadata to generate PowerDNS config file
  metadata_startup_script = "${file("scripts/startup.sh")}"

  service_account {
    scopes = ["cloud-platform"]
  }
}

