resource "aws_s3_bucket" "b" {
  bucket = "terraform-s3-bucket12321"
  #acl = "private"

  tags = {
    Name        = "terraform-s3-bucket12321"
    Environment = "Dev"
  }
}
# Upload an object
resource "aws_s3_bucket_object" "bucket" {
  bucket = "terraform-s3-bucket12321"
  key    = "auto-tag.json"
  #source = "C:\\Users\\admin\\Desktop\\New-folder"
}