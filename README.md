# terraform-aws-ecs
Terraform code in order to deploy an ECS infrastructure.

<summary>
This is a simple config to deploy an application on ECS using ECR as docker registry.
</summary>

<h4>Skeleton:</h4>
<pre>
├── README.md
├── dev
│   ├── main.tf
│   ├── outputs.tf
│   └── versions.tf
├── ecr
│   ├── docker-nodejs-helloworld
│   │   ├── Dockerfile
│   │   ├── LICENSE
│   │   ├── Makefile
│   │   ├── README.md
│   │   ├── index.js
│   │   ├── package-lock.json
│   │   └── package.json
│   └── main.tf
└── modules
    └── services
        └── webserver
            ├── main.tf
            ├── outputs.tf
            └── variables.tf
</pre>

<h4>Pre-requisites:</h4>
<h5>Terraform / AWSCli / Python3</h5>
 <ul>
  STEP 1:
 <ol>
  <li> Terraform v0.13.0 </li>
  <li> provider registry.terraform.io/hashicorp/aws v3.2.0 </li>
 </ol>
  STEP 2:
   <ol>
   <li>  ADD AWS credentials in ~/.aws/config </li>
  Example:
    <p>
    [default]
    aws_access_key_id = Access key 
    aws_secret_access_key = Secret_key 
    </p>
    </li>
  </ol>
 </ul>

<h3> Init </h3>
<p> - docker image: cd ecr && terraform apply (push image) </p>
<p> - ddeploy ecs:  cd dev && terraform apply </p>

<h3> Terraform </h3>
<p> - terraform plan -> validate code</p>
<p> - terraform apply -> deploy infrastructure code</p>
<p> - terraform destroy -> destroy infrastructure code</p>

<h3> Improvement </h3>
<p> - Implement HTTPS </p>
<p> More info: https://aws.amazon.com/es/blogs/containers/maintaining-transport-layer-security-all-the-way-to-your-container-using-the-application-load-balancer-with-amazon-ecs-and-envoy/ </p>

