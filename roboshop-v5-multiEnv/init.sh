#!/bin/bash

#token=$1
action=$1
rm -rf .terraform ;
git pull ;
terraform init --backend-config=env/test/state.tfvars ;
terraform plan --var-file=env/test/test.tfvars ; 
terraform $action -auto-approve  --var-file=env/test/test.tfvars
