variable "somevariable1" {
}
variable "somevariable2" {
}
variable "somevariable3" {
}

module "sub" {
  source = "sub-module/"

  somevariable1 = "${var.somevariable1}"
  somevariable2 = "${var.somevariable2}"
  somevariable3 = "${var.somevariable3}"
}

output "template" {
  value = "${module.sub.template}"
}
