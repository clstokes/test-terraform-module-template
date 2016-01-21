variable "somevariable1" {
}
variable "somevariable2" {
}
variable "somevariable3" {
}

resource "template_file" "my_template" {
  template = "${file("${path.module}/template.json")}"

  vars {
    somevariable1 = "${var.somevariable1}"
    somevariable2 = "${var.somevariable2}"
    somevariable3 = "${var.somevariable3}"
  }
}

output "template" {
  value = "${template_file.my_template.rendered}"
}
