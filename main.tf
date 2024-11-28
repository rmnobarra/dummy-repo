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

# Generate a random string
resource "random_string" "random_text" {
  length = 16
  special = false
  upper = false
}

# Create a local file with the random string
resource "local_file" "random_file" {
  filename = "random_text.txt"
  content  = random_string.random_text.result
}

# Generate another random string
resource "random_string" "another_random_text" {
  length = 16
  special = true
  upper = true
}

# Create another local file with the new random string
resource "local_file" "another_random_file" {
  filename = "another_random_text.txt"
  content  = random_string.another_random_text.result
}