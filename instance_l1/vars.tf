variable REGION {
    default = "us-east-1"
}

variable USER {
    default = "ubuntu"
}

variable ZONE {
    default= "us-east-1a"
}

variable AMIS {
    type = map
    default = {
        us-east-1 = "ami-04b70fa74e45c3917"
    }
}

