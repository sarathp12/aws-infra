#--------------storage/main.tf-----------

# create a random id
resource "random_id" "pt_bucket_id" {
    byte_length = 2
}

# create the bucket
resource "aws_s3_bucket" "pt_code" {
    bucket = "${var.project_name}-${random_id.pt_bucket_id.dec}"
    acl = "private"
    force_destroy = true
    
    tags {
        name = "pt_bucket"
    }
}
