variable "somevariable1" {
  default = "1"
}
variable "somevariable2" {
  default = "2"
}
variable "somevariable3" {
  default = ""
}

module "parent" {
  source = "parent-module/"

  somevariable1 = "${var.somevariable1}"
  somevariable2 = "${var.somevariable2}"
  somevariable3 = "${var.somevariable3}"
}

resource "aws_ecs_task_definition" "my_task_def" {
  family                = "my_task_def"
  container_definitions = "${module.parent.template}"
}

output "template" {
  value = "${module.parent.template}"
}
