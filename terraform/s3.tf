# Configuração do provider AWS
provider "aws" {
  region = "us-east-1"  # Altere para sua região desejada
}

# Bloco terraform para definir versão mínima e providers necessários
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Bucket S3
resource "aws_s3_bucket" "bucket" {
  bucket = "multicloud-devops-ai-glinare"  # Altere para um nome único globalmente
  
  tags = {
    Environment = "Production"
    Project     = "multicloud-devops-ai"
  }
}