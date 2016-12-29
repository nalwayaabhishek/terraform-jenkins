Configuration

The project root contains a file named terraform.tfvars.example. Rename that file to terraform.tfvars and populate it with your AWS credentials:

$ mv terraform.tfvars.example terraform.tfvars
$ vim terraform.tfvars
There is also a variables.tf at the project root. It contains a listing of all the Terraform variables. Some defaults are set there as well. If you want to override any of them, override them in terraform.tfvars.
