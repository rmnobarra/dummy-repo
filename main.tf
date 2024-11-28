# Generate the first random string
resource "random_string" "random_text" {
  length = 16
  special = false
  upper = false
}

# Create a local file with the first random string
resource "local_file" "random_file" {
  filename = "random_text.txt"
  content = random_string.random_text.result
}

# Generate the second random string
resource "random_string" "another_random_text" {
  length = 16
  special = true
  upper = true
}

# Create another local file with the second random string
resource "local_file" "another_random_file" {
  filename = "another_random_text.txt"
  content = random_string.another_random_text.result
}

# Generate the third random string
resource "random_string" "third_random_text" {
  length = 20
  special = true
  upper = false
}

# Create a local file with the third random string
resource "local_file" "third_random_file" {
  filename = "third_random_text.txt"
  content = random_string.third_random_text.result
}