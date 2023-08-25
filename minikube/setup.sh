#!/bin/bash

read -p 'Enter DNS Hosted Zone Name: ' hname
export TF_VAR_HOSTED_ZONE=${hname}

if [ ! -f "~/.ssh/id_rsa.pub" ]; then
  cat /dev/zero | ssh-keygen -q -N ""
fi

echo "Ensure you open the following URL and subscribe. Wait for Subscription to Complete and Press Enter to Continue"
echo "https://aws.amazon.com/marketplace/pp/prodview-foff247vr2zfw?ref_=aws-mp-console-subscription-detail"
read -p ""

mkdir -p ~/.kube
curl -s https://gitlab.com/thecloudcareers/opensource/-/raw/master/lab-tools/terraform/install.sh | sudo bash
curl -s https://gitlab.com/thecloudcareers/opensource/-/raw/master/lab-tools/terraform/k8-stack/install.sh | sudo bash
rm -rf .terraform*
terraform init
terraform apply -auto-approve