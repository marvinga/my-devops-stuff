## hands on:
### IAM : Permissions
#### Create user:
  - root: marvin
  - admin: marvingm

`````Marlie221244444444``````
`````@@01Marlie221244444`````

- IAM Policies

aws-marvingm-console@@@@941245766704

- CLI


```bash
Last login: Fri Feb 14 23:04:37 on console
aws@Marvins-MacBook-Pro ~ % aws --version
aws-cli/2.24.5 Python/3.12.6 Darwin/22.6.0 exe/x86_64
aws@Marvins-MacBook-Pro ~ % aws --version
aws-cli/2.24.5 Python/3.12.6 Darwin/22.6.0 exe/x86_64
aws@Marvins-MacBook-Pro ~ % aws configure
AWS Access Key ID [None]: AKIA5WJU6TQYGH2HLYEU44444444444
AWS Secret Access Key [None]: 1zhxPyPLY6ZuOuuNOpIY2nOsGcIhDM0F4xPnqnYt44444444
Default region name [None]: ca-central-1 
Default output format [None]:

aws@Marvins-MacBook-Pro ~ % aws iam list-users
{
    "Users": [
        {
            "Path": "/",
            "UserName": "marvin",
            "UserId": "AIDA5WJU6TQYLTOUV5FL7",
            "Arn": "arn:aws:iam::941245766704:user/marvin",
            "CreateDate": "2023-06-19T15:08:05+00:00",
            "PasswordLastUsed": "2023-06-19T15:09:16+00:00"
        },
        {
            "Path": "/",
            "UserName": "marvingm",
            "UserId": "AIDA5WJU6TQYHSXKTCWAA",
            "Arn": "arn:aws:iam::941245766704:user/marvingm",
            "CreateDate": "2025-02-15T19:36:43+00:00",
            "PasswordLastUsed": "2025-02-15T20:40:20+00:00"
        }
    ]
}



```

