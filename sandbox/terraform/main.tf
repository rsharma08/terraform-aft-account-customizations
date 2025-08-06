resource "null_resource" "test_sandbox" {
  provisioner "local-exec" {
    command = "echo 'Sandbox customization executed!'"
  }
}
