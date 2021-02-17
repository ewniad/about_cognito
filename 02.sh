#!sh


#aws cognito-idp list-user-pools --max-results 10
#
#{
#    "UserPools": [
#        {
#            "Id": "us-west-2_8CsWF4Dgu",
#            "Name": "54awsamplifi2d0124dfd_userpool_d0124dfd-dev",
#            "LambdaConfig": {},
#            "LastModifiedDate": "2021-02-12T22:19:56.757000+09:00",
#            "CreationDate": "2021-02-12T22:19:56.757000+09:00"
#        },
#        {
#            "Id": "us-west-2_fCYZRQQ89",
#            "Name": "ew_orogon_upool",
#            "LambdaConfig": {},
#            "LastModifiedDate": "2021-02-11T17:11:31.002000+09:00",
#            "CreationDate": "2021-02-11T15:08:58.443000+09:00"
#        }
#    ]
#}

#aws cognito-idp list-user-pool-clients \
#--user-pool-id "us-west-2_fCYZRQQ89"
#
#{
#    "UserPoolClients": [
#        {
#            "ClientId": "188fsuh904vskfhu54fdmv2c52",
#            "UserPoolId": "us-west-2_fCYZRQQ89",
#            "ClientName": "app04"
#        },
#        {
#            "ClientId": "kub62rqjjk4mpb2cs92p9bmjg",
#            "UserPoolId": "us-west-2_fCYZRQQ89",
#            "ClientName": "app03"
#        }
#    ]
#}

aws cognito-idp sign-up \
	--client-id "188fsuh904vskfhu54fdmv2c52" \
	--username  user3 \
	--password password3 \
	--user-attributes Name="email",Value="jane@example.com"

