aws capstone
=====================

Assumptions
-----
1- You have AWS credentials
2- You have a AWS Linux Instance set up to deploy: Git, Terraform, AWS creds, etc

eruser138account

General description
-----

|*instance to use*   |*Description*                                                           |
|capstone-deploy-mgl |10 points – Build an environment to run Terraform                       |
|capstone-deploy-mgl |10 points – Install the Terraform software and ensure it works properly |
|capstone-JRnh       |20 points – Test the environment by creating a simple virtual machine   |
|ut-anagramma-elb    |50 points - Build a website by  reusing modules                         |


INSTRUCTIONS
------------------

cd aws-capstone/app/
terraform init
terraform validate
terraform plan
terraform apply auto-approve

IN THE BROWSER
https://ut-anagramma-elb-163682813.us-east-1.elb.amazonaws.com/ (or similar given)

REFERENCES:
https://github.com/maolopez/ut_anagramma 
