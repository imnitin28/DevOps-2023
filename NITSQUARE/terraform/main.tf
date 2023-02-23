# // Saves ssh-key locally
# resource "local_file" "ssh-key" {
#   sensitive_content = base64decode(var.GCP_OS_LOGIN_SSH)
#   filename          = "ssh-key.pem"
#   file_permission   = "0600"
# }

resource "null_resource" "nitsquare_configuration_management" {
  # depends_on = [local_file.ssh-key]
  triggers = {
    always_run = timestamp()
  }

  provisioner "local-exec" {
    command = "../scripts/containerize-push-to-gcr.sh"
    environment = {
    GCP_PROJECT               = var.project //pass vars here
    IMAGE_NAME="web-app"
    RESPONSE="y"
    VERSION="1.0"
    }
  }

  # provisioner "local-exec" {
  #   command = "sleep 30 && ansible-playbook ansible-gcp/nitsquare.yml"
  #   environment = {
  #     GCP_SERVICE_ACCOUNT_CONTENTS          = var.GOOGLE_APPLICATION_CREDENTIALS
  #   #   ANSIBLE_PRIVATE_KEY_FILE              = "ssh-key.pem"
  #   #   ANSIBLE_REMOTE_USER                   = var.GCP_OS_LOGIN_SSH_USER
  #     ANSIBLE_CONFIG                        = "ansible-gcp/ansible.cfg"
  #   }
  # }
}