provider "aws" {
  region     = "${var.region}"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}

resource "aws_instance" "web" {
    ami="${var.ami}"
    instance_type = "${var.type}"
    key_name = "datadog"
    tags = "${var.tags}"
}

output "ip" {
    value = "${aws_instance.web.*.public_ip}"
}
