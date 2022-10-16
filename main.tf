locals {
  // Data sourced from AWS Pandas SDK project in GitHub
  // https://github.com/aws/aws-sdk-pandas/blob/main/docs/source/layers.rst
  pandas_layer_arns = {
    us-east-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    },
    us-east-2 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:us-east-2:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:us-east-2:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:us-east-2:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:us-east-2:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:us-east-2:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    },
    us-west-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:us-west-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:us-west-1:336392948345:layer:AWSSDKPandas-Python38:2",
        "python3.9" = "arn:aws:lambda:us-west-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    us-west-2 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python38:2",
        "python3.9" = "arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:us-west-2:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    ap-northeast-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-northeast-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-northeast-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-northeast-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:ap-northeast-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:ap-northeast-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    ap-northeast-2 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-northeast-2:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-northeast-2:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-northeast-2:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    ap-northeast-3 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-northeast-3:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-northeast-3:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-northeast-3:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    ap-south-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-south-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-south-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-south-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:ap-south-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:ap-south-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    ap-southeast-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-southeast-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-southeast-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-southeast-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:ap-southeast-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:ap-southeast-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    ap-southeast-2 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ap-southeast-2:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ap-southeast-2:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ap-southeast-2:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:ap-southeast-2:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:ap-southeast-2:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    ca-central-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:ca-central-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    eu-central-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:eu-central-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:eu-central-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:eu-central-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:eu-central-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:eu-central-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    eu-north-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:eu-north-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:eu-north-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:eu-north-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    eu-west-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:eu-west-1:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    eu-west-2 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python38-Arm64:1",
        "python3.9" = "arn:aws:lambda:eu-west-2:336392948345:layer:AWSSDKPandas-Python39-Arm64:1"
      }
    }
    eu-west-3 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:eu-west-3:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:eu-west-3:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:eu-west-3:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
    sa-east-1 = {
      x86_64 = {
        "python3.7" = "arn:aws:lambda:sa-east-1:336392948345:layer:AWSSDKPandas-Python37:1",
        "python3.8" = "arn:aws:lambda:sa-east-1:336392948345:layer:AWSSDKPandas-Python38:1",
        "python3.9" = "arn:aws:lambda:sa-east-1:336392948345:layer:AWSSDKPandas-Python39:1"
      },
      arm64 = {
        "python3.7" = "",
        "python3.8" = "",
        "python3.9" = ""
      }
    }
  }
}
