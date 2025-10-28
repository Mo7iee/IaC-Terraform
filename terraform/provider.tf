terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  profile = "default"
}



     # # ssh into Bastion
# ssh -i ~/Downloads/key.pem ec2-user<bastion-public-ip>

     # # ssh into private instances through Bastion
# from local machine,Run the scp command from your local machine to copy the private key, for example:
# scp -i ~/Downloads/key.pem ~/Downloads/key.pem ec2-user@3.235.84.189:~/
# Once copied, SSH into the bastion:
# ssh -i ~/Downloads/key.pem ec2-user@3.235.84.189
# Now you can SSH into a private instance using the bastion:
# ssh -i ~/key.pem ec2-user@<private-instance-ip>
