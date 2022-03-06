resource "local_file" "example" {
  filename = "example.txt"
  content = var.content
}

data "local_file" "data_example" {
  filename = "example.txt"
}

output "data-source-result" {
  value = data.local_file.data_example.content_base64
}

variable "content" {
  type = string
  // default = "hello world"
}

output "file-id" {
  value = resource.local_file.example.id
}

output "chicken-egg" {
  value = sort(["ch", "eg"])
}


