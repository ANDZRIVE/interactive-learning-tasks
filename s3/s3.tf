resource "aws_s3_bucket" "b" {
  bucket = " aws-s3-devops-task-andrei"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Team        = "DevOps"
    Environment = "Dev"
  }
}

