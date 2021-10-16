{
    "Version": "2012-10-17",
    "Statement": [%{ if read_principals_enabled }
        {
            "Sid": "AllowPull",
            "Effect": "Allow",
            "Principal": {
                "AWS": ${read_principals}
            },
            "Action": [
                "ecr:BatchGetImage",
                "ecr:GetDownloadUrlForLayer"
            ]
        }%{ endif }%{ if read_principals_enabled && readwrite_principals_enabled },%{ endif }%{ if readwrite_principals_enabled }
        {
            "Sid": "AllowPushPull",
            "Effect": "Allow",
            "Principal": {
                "AWS": ${readwrite_principals}
            },
            "Action": [
                "ecr:BatchGetImage",
                "ecr:BatchCheckLayerAvailability",
                "ecr:CompleteLayerUpload",
                "ecr:GetDownloadUrlForLayer",
                "ecr:InitiateLayerUpload",
                "ecr:PutImage",
                "ecr:UploadLayerPart"
            ]
        }%{ endif }
    ]
}
