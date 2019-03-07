resource "aws_instance" "web" {
    ami="ami-03d11d41e18ce29fc"
    instance_type = "t2.small"
    key_name = "runGitLab"
    tags{
        Name = "SpringBootApplication",
        ScheduledStartStop = "True",
        Equipe = "TecNinjas",
        Sistema = "GitlabGinger"
    }
    security_groups = ["TestAnsible"]  
}

provider "aws" {
    region="us-east-1"
}
output "ip" {
  value = "${aws_instance.web.*.public_ip}"
}
