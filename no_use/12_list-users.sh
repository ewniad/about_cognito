#!sh

aws cognito-idp list-users \
	--user-pool-id us-west-2_3VlT2SQUS \
	--filter "username = \"user2\""    \
	--query Users[].Username

#	--attributes-to-get "username" \
#[--cli-input-json | --cli-input-yaml]
#[--starting-token <value>]
#[--page-size <value>]
#[--generate-cli-skeleton <value>]


#{
#    "Users": [
#        {
#            "Username": "user1",
#            "Attributes": [
#                {
#                    "Name": "sub",
#                    "Value": "05e0c409-bc46-42a9-88c9-072c1b98b285"
#                }
#            ],
#            "UserCreateDate": "2021-02-14T19:41:22.274000+09:00",
#            "UserLastModifiedDate": "2021-02-14T20:00:52.704000+09:00",
#            "Enabled": true,
#            "UserStatus": "CONFIRMED"
#        },
#        {
#            "Username": "user2",
#            "Attributes": [
#                {
#                    "Name": "sub",
#                    "Value": "6aba4a59-ed03-4231-a302-27e2bff1c54b"
#                }
#            ],
#            "UserCreateDate": "2021-02-17T14:12:13.308000+09:00",
#            "UserLastModifiedDate": "2021-02-17T14:12:13.308000+09:00",
#            "Enabled": true,
#            "UserStatus": "UNCONFIRMED"
#        },
#        {
#            "Username": "user3",
#            "Attributes": [
#                {
#                    "Name": "sub",
#                    "Value": "a83b97d4-b832-43dc-92f1-6bddb097a740"
#                }
#            ],
#            "UserCreateDate": "2021-02-17T14:56:49.361000+09:00",
#            "UserLastModifiedDate": "2021-02-17T14:56:49.361000+09:00",
#            "Enabled": true,
#            "UserStatus": "UNCONFIRMED"
#        },
#        {
#            "Username": "user4",
#            "Attributes": [
#                {
#                    "Name": "sub",
#                    "Value": "95956e78-6ce8-457a-a859-689e2c4dc58c"
#                }
#            ],
#            "UserCreateDate": "2021-02-17T16:17:37.847000+09:00",
#            "UserLastModifiedDate": "2021-02-17T16:24:09.854000+09:00",
#            "Enabled": true,
#            "UserStatus": "CONFIRMED"
#        }
#    ]
#}
#
#
