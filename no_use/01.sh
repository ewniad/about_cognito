#!sh

#aws cognito-idp list-user-pools --max-results 10
#
#{
#    "UserPools": [
#        {
#            "Id": "us-west-2_fCYZRQQ89",
#            "Name": "ew_orogon_upool",
#            "LambdaConfig": {},
#            "LastModifiedDate": "2021-02-11T15:08:58.443000+09:00",
#            "CreationDate": "2021-02-11T15:08:58.443000+09:00"
#        }
#    ]
#}

#aws cognito-idp admin-get-user \
#	--user-pool-id us-west-2_fCYZRQQ89 \
#	--username user1
#
#{
#    "Username": "user1",
#    "UserAttributes": [
#        {
#            "Name": "sub",
#            "Value": "2c2ff2f3-69b7-495f-9797-67fea4d496d9"
#        }
#    ],
#    "UserCreateDate": "2021-02-11T17:11:56.068000+09:00",
#    "UserLastModifiedDate": "2021-02-11T17:11:56.068000+09:00",
#    "Enabled": true,
#    "UserStatus": "FORCE_CHANGE_PASSWORD"
#}

#aws cognito-idp list-users \
#	--user-pool-id us-west-2_fCYZRQQ89

#aws cognito-idp admin-create-user \
#	--user-pool-id us-west-2_fCYZRQQ89 \
#	--username user2

aws cognito-idp associate-software-token


