resource "null_resource" "test_customization" {
  provisioner "local-exec" {
    command = "echo 'Customization pipeline is triggered'"
  }
}
