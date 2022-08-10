# Adding SSH key to Amazon EC2
resource "aws_key_pair" "ssh_key" {
  #  key_name   = "${var.prefix}-${var.env}-ssh-key"
  public_key = file(var.path_to_linux_key)
}
