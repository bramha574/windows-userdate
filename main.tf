data "template_file" "user_data" {
  template = "${file("${path.module}/user_data.ps")}"
  vars {
    ec2_user     = "${var.ec2_user}"
    ec2_password = "${var.ec2_password}"
  }
}
