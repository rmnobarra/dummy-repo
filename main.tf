# Generate a random string
resource "random_string" "random_text" {
  length  = 16
  special = false
  upper   = false
}

# Create a local file with the random string
resource "local_file" "random_file" {
  filename = "random_text.txt"
  content  = random_string.random_text.result
}