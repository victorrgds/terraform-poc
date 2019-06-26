variable "region" {
    default = "us-east-1"
    description = "Main Region"
}

variable "access_key" {
    default = "XXXXXXX"
}

variable "secret_key" {
    default = "XXXXXXX"
}

variable "ami" {
    default = "ami-0c6b1d09930fac512"
}

variable "type" {

}

variable "tags" {
    type = "map"
    default = {
        "Name" = "DATADOG"
        "ScheduledStartStop" = "True"
    }
}

