#!sh

#curl -i -X 'GET' \
#https://ew02.auth.us-west-2.amazoncognito.com/oauth2/authorize?&\
#response_type=token&\
#client_id=7ndv6d4sf47tk42gss7vl46oo7&\
#redirect_uri=https://example.com/&\
#state=STATE&\
#scope=aws.cognito.signin.user.admin

#scope=openid+profile+aws.cognito.signin.user.admin
#redirect_uri=http://localhost:3000/&\

#GET https://mydomain.auth.us-east-1.amazoncognito.com/oauth2/authorize?
#response_type=token&
#client_id=ad398u21ijw3s9w3939&
#redirect_uri=https://YOUR_APP/redirect_uri&
#state=STATE&
#scope=aws.cognito.signin.user.admin

curl -s -i -X 'GET' \
https://ew02.auth.us-west-2.amazoncognito.com/login?&\
client_id=7ndv6d4sf47tk42gss7vl46oo7&\
response_type=token&
redirect_uri=http://localhost:3000/&\
scope=openid+profile+aws.cognito.signin.user.admin


#"https://【ドメイン名】.auth.ap-northeast-1.amazoncognito.com/login?response_type=token&client_id=【アプリクライアントID１】&scope=openid%20email&redirect_uri=【コールバックURL】">Response_Type=token</a><br>


