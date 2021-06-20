# CloudFormation Examples

This repository contains CloudFormation example templates, each building on the previous stack:

- Create Basic Amazon EC2 Instance
- Enable SSH and HTTP/HTTPS Traffic
- Assign an IP Address and Output the Website URL
- Make the Template Dynamic

This repository accompanies [Provisioning an EC2 Instance with CloudFormation (part 1)](https://jennapederson.com/blog/2021/6/21/provisioning-an-ec2-instance-with-cloudformation-part-1/) blog post.

## 1. Create Basic Amazon EC2 Instance

To create the stack using this template, run the `create-stack` command-line:

`$ aws cloudformation create-stack --stack-name ec2-example --template-body file://01_ec2.yaml`

## 2. Enable SSH and HTTP/HTTPS Traffic

You can update your stack using the `update-stack` command:

`$ aws cloudformation update-stack --stack-name ec2-example --template-body file://02_ec2.yaml`

## 3. Assign an IP Address and Output the Website URL

You can update your stack using the `update-stack` command:

`$ aws cloudformation update-stack --stack-name ec2-example --template-body file://03_ec2.yaml`

## 4. Make the Template Dynamic

You can update the stack with this command, passing in the parameter values:

```bash
$ aws cloudformation update-stack --stack-name ec2-example --template-body file://04_ec2.yaml \
--parameters ParameterKey=AvailabilityZone,ParameterValue=us-east-1a \
ParameterKey=EnvironmentType,ParameterValue=dev \
ParameterKey=KeyPairName,ParameterValue=jenna
```

## 5. Delete Your Stack

Don’t forget to delete your stack so you don’t accrue charges. You can do that with the `delete-stack` command:

`$ aws cloudformation delete-stack --stack-name ec2-example`