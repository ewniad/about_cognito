#!sh


cid=7ndv6d4sf47tk42gss7vl46oo7
user=user4
pass=password4

echo IdToken を取得する

token=$(\
aws cognito-idp initiate-auth \
	--auth-flow USER_PASSWORD_AUTH \
	--auth-parameters USERNAME=${user},PASSWORD=${pass} \
	--client-id  ${cid} \
	--query AuthenticationResult.IdToken \
| sed 's/"//g' \
)

echo API Gateway にアクセス

curl -s \
	-H "Authorization: ${token}" \
	https://i6hg24dmtg.execute-api.us-west-2.amazonaws.com/stage1

