# Initialization Process

A working directory must be initialied before Terraform can perform any operations in it.(Same as initializing git)

Before initializing terraform in empty working directory need first to create .tf file.

```
cd /Download/test
terraform init
Terraform initialized in an empty directory!

The directory has no Terraform configuration files. You may begin working
with Terraform immediately by creating Terraform configuration files.
```

```
cd /Download/test
touch test.tf
terraform init
Initializing the backend...

Initializing provider plugins...

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

# Reinitialization

Chages that include Provider requirements, module sources or version constraints & backed config need to reinitialize terraform.
