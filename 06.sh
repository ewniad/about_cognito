#!sh

#Enable username password based authentication (ALLOW_USER_PASSWORD_AUTH)

echo IdToken を取得する

token=$(\
aws cognito-idp initiate-auth \
	--auth-flow USER_PASSWORD_AUTH \
	--auth-parameters USERNAME=user1,PASSWORD=password1 \
	--client-id  60otdkb9vbdu39uko9b7au4r89 \
	--query AuthenticationResult.IdToken \
| sed 's/"//g' \
)

echo API Gateway にアクセス

curl -s \
	-H "token01: ${token}" \
	https://i6hg24dmtg.execute-api.us-west-2.amazonaws.com/stage1

