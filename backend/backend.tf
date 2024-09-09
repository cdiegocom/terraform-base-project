terraform {
    backend "s3" {
        key = "terraform/tfstate.tfstate"
        bucket = "myremotebackendcdcp"
        region = "ca-central-1"
    }
}
