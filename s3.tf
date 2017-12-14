#AWS and GCP Storage Buckets are Included 
resource "aws_s3_bucket" "s3bucket" {
  bucket = "akhilpalavai"
  acl    = "private"

  tags {
    Name        = "terraform bucket"
  }
}
resource "google_storage_bucket" "gcpterraform" {
  name     = "hybridcloud"
  location = "us-central1"
website {
    main_page_suffix = "index.html"
  }
}

