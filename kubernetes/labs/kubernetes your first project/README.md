
AWS Details:

https://console.aws.amazon.com

https://us-east-1.console.aws.amazon.com/console/home?region=us-east-1#

user: mrvngm@gmail.com
passwd: @@01AWS2212

aws user: marvin/@@01Aws
ID: 941245766704


access key: AKIA5WJU6TQYNM4E5PDS
Secret access key: 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

external ID: explorecalifornia

admin-access-explore-california
arn:aws:iam::941245766704:role/admin-access-explore-california

aws sts assume-role --role-arn 'arn:aws:iam::941245766704:role/admin-access-explore-california' --role-session-name MySession --external-id "explorecalifornia"

[cloudshell-user@ip-10-6-164-122 ~]$ aws sts assume-role --role-arn 'arn:aws:iam::941245766704:role/admin-access-explore-california' --role-session-name MySession --external-id "explorecalifornia"
{
    "Credentials": {
        "AccessKeyId": "ASIA5WJU6TQYD6FORKHT",
        "SecretAccessKey": "fR3fjggZDsG7WbwR9V4Mg6FNeKV7N4foHUZrMOqS",
        "SessionToken": "IQoJb3JpZ2luX2VjEDkaCXVzLWVhc3QtMSJHMEUCIQCO/k77OdjPdJU3HGe7UZ8i/xpC49YlSFYruB0/zaUfHQIgF0DEITkOqSchoLO4X+rZs4f7Zep35n7G/OVgcmWSDZsqnwIIkv//////////ARADGgw5NDEyNDU3NjY3MDQiDOE0WX87geQqsPgOdirzASFLERAz2Grca0BRpMwqzp7G3fOdPXa5O2SJukLM9hDAxxP6jcdQ5ZtdiXqkVe0Hm9GSp7mBrzaQr56UFe5WNCgOrmiay59l691vRuARgEpOWGUdlkmMXj5/u3qHwm+LFUHyktTT9F3UsZNpVxG5tBhFNM+j2bSs83Yqb1DQp4CN9cYxoJXMmYEm/LHaQgaeDH/p43nqp1GsK+hN9KXmgWAl/qATPKfmFep8XlqoICkEVCHLCmpcj8YmYma+t/fLdD9e/N/NIccQysQgzy2X4uW0o11D5K7i6j/NDltBi7Fn70yfEN9aXkROOGLs+paGCWj96DDBiMKkBjqdARLb20ZY/WN3En3gzdyOWaX/Uw89dB6DJ1g1S/rIm6uOw6y+Z21T5KsckNmIg4dM5GIMveg+fI/UuMWw8iHLS1sMSFjG/KmptsjPYg8mDph4G4FrGq8aB/daFEJSE9QoE0lD0bRzPnozlhEW1AaXgT+ODEf8o4Z+TKO+HXxmvAOab5+cOWtDMMEiEhe1xwxzif0C1m6vw29glFKRZC0=",
        "Expiration": "2023-06-19T17:37:21+00:00"
    },
    "AssumedRoleUser": {
        "AssumedRoleId": "AROA5WJU6TQYCAF26GY6X:MySession",
        "Arn": "arn:aws:sts::941245766704:assumed-role/admin-access-explore-california/MySession"
    }
}


[cloudshell-user@ip-10-6-164-122 ~]$ aws ec2 describe-instances
{
    "Reservations": []
}


export AWS_ACCESS_KEY_ID=ASIA5WJU6TQYFCEUFMGZ
export AWS_SECRET_ACCESS_KEY_ID=VfN+srC/6D8E/gO56D4Ss1p4Obbj64DZIEoSatFZ
export AWS_SESSION_TOKEN="IQoJb3JpZ2luX2VjEDkaCXVzLWVhc3QtMSJIMEYCIQCD52igHKvkK9/2HCiVwadnabz3wEMJ6SXB9XbHZ2KioQIhAPy8YuDizBgSvIgNtodJx1fb2dOAMREcCONk8d7n4NrPKp8CCJL//////////wEQAxoMOTQxMjQ1NzY2NzA0IgxWhUApG0leTFR27i0q8wGvDhqaXqvbfS8bWPW1n0DvppbvG0YrtiiMSZiC+Qp1vmFpLcH0BHWpz0b3VH6+WEak89GDfe0SIxAZWkjMcyWt2QssPAMIX014Mzrx3Mi6cDJ3AVLsEIB0VvQYL7A6YLTwGvK21FQb+OaHae1zh4sl00+bJ/ssw//YhlOZnZmLYoVwHf0CL+CBQLKcqothujZoeLRNb2GS2pS8rGOGg9FiL91xnEydVi6JvH9iaxy/KDlkNOjQu6dL+Ml1kFK2kVSPNpnU6OOGZMR6FCHNndaER0Kr7gwEP6KHEfOe+kjL7hXzLXkiHZXcjONBDP6BSfP1U2Ew2IzCpAY6nAEdIWJOs1MA3IVa2GuxEDdQxOoNLrvcFETDM48mdZSDNdPeRbLkeyHBdn4ACteIObxwfYDMY5z/1jxE81JdHJ7uCI6ShE1IjvqZnEqjCfgMFsH+ba9I0vA8h0CcJ+0v8ZhL1ti45CjZ7+Z7POkgVbl0RV5bPsG9FNuh94whiianQWuox4qGHdCg469roSZRf9dgecgbNjtsK4Tmzu0=",

       