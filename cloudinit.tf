provider "cloudinit" {}

data "template_file" "jenkins-init" {
  template = "${file("scripts/jenkins-init.sh")}"
  vars {
    JENKINS_VERSION = "${var.JENKINS_VERSION}"
  }
}

data "template_cloudinit_config" "cloudinit-jenkins" {

  gzip = false
  base64_encode = false

  part {
    content_type = "text/x-shellscript"
    content      = "${data.template_file.jenkins-init.rendered}"
  }

}
