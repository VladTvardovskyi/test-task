resource "null_resource" "exec_ansible" {
  provisioner "local-exec" {
    working_dir = var.working_dir
    command = var.command
    interpreter = ["/bin/bash", "-c"]
  }
}