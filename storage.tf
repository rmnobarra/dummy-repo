# Define the S3 bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-random-text-bucket"
  acl    = "private"
}

# Upload the first random text file to S3
resource "aws_s3_bucket_object" "random_file_upload" {
  bucket = aws_s3_bucket.example_bucket.id
  key    = "random_text.txt"
  source = local_file.random_file.filename
}

# Upload the second random text file to S3
resource "aws_s3_bucket_object" "another_random_file_upload" {
  bucket = aws_s3_bucket.example_bucket.id
  key    = "another_random_text.txt"
  source = local_file.another_random_file.filename
}

# Upload the third random text file to S3
resource "aws_s3_bucket_object" "third_random_file_upload" {
  bucket = aws_s3_bucket.example_bucket.id
  key    = "third_random_text.txt"
  source = local_file.third_random_file.filename
}