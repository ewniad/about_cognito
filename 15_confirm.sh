#!sh


cid=7ndv6d4sf47tk42gss7vl46oo7
user=user4
pass=password4
email=wkbyasi@gmail.com

read -p "verification code ? " code

aws cognito-idp confirm-sign-up \
	--client-id ${cid} \
	--username ${user} \
	--confirmation-code ${code}


