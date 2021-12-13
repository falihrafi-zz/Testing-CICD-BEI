module "terraform_ci_cd" {
  source            = "github.com/traveloka/terraform-aws-codebuild-terraform-ci-cd.git?ref=v0.4.0" // it's recommended to always use latest version
  terraform_version = "0.12.31" // it's recommended to always use latest version but make sure the module already supports that version
  product_domain    = "test" // ex. bei
  environment       = "testing" // ex. staging
  image             = "015110552125.dkr.ecr.ap-southeast-1.amazonaws.com/bei-codebuild-terraform-ci-cd-app:v0.2.3" // it's recommended to always use latest version https://github.com/traveloka/codebuild-terraform-ci-cd-image/releases
 
  source_repository_url = "https://github.com/falihrafi/Testing-CICD-BEI.git" // e.g. https://github.com/traveloka/tvlk-bei-stg-terraform-aws.git
}
