module "example" {
  source = "github.com/josephptata/tf-module"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
