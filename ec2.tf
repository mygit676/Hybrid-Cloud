//Creating GCP Instance
resource "google_compute_instance" "hybridcloud" {
  name         = "test"
    machine_type = "n1-standard-1"
    zone         = "us-central1-b"

   tags = ["foo", "bar"]
   boot_disk {
   initialize_params {
   image = "debian-cloud/debian-8"
                        }
                          }

   // Local SSD disk
   scratch_disk {
        }
  network_interface {
  network = "default"
  access_config {
  // Ephemeral IP
   }
     }
        metadata {
          foo = "bar"
      }
   metadata_startup_script = "echo hi > /test.txt"
   service_account {
   scopes = ["userinfo-email", "compute-ro", "storage-ro"]
        }
    }
//Creating AWS Instance 

resource "aws_instance" "terraform"  {
        ami = "ami-55ef662f"
        instance_type = "t2.micro"
}

