#!/bin/bash

#token=$1
rm -rf .terraform ;
git pull ;
terraform init ;
terraform plan ; 
terraform apply -auto-approve
