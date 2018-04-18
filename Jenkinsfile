node{
   
   stage("App Build started"){
      echo 'App build started..'
      git credentialsId: 'GithubID', url: 'https://github.com/Cenovus1234/AWS-S3-Bucket.git'
      }
   stage("Terraform init"){
   sh 'terraform init'
   }
   stage("Terraform plan"){
   sh 'terraform plan -var key_name=Devops_key'
   }
   stage("Terraform apply"){
   sh 'terraform apply -auto-approve -var key_name=Devops_key'
   }
   stage("Terraform Destroy"){
   }
      
      
 } 
