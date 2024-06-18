variable REGION {
    default = "us-east-1"
}

variable USER {
    default = "ec2-user"
}

variable ZONE {
    default= "us-east-1a"
}

variable AMIS {
    type = map
    default = {
        us-east-1 = "ami-08a0d1e16fc3f61ea"
    }
}

