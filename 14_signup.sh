#!sh


cid=7ndv6d4sf47tk42gss7vl46oo7
user=user4
pass=password4
email=wkbyasi@gmail.com

#read -p "USERNAME? " user
#read -p "PASSWORD? " pass

echo サインアップする。

aws cognito-idp sign-up \
--client-id ${cid} \
--username ${user} \
--password ${pass} \
--user-attributes Name="email",Value="${email}"

