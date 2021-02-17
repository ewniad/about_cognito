import {
   CognitoIdentityProvider,
   InitiateAuthCommand,
   SignUpCommand
} from "@aws-sdk/client-cognito-identity-provider";


const client = new CognitoIdentityProvider({region: 'us-west-2'});

async function signup(user, pass, cliendid) {
    try {
        console.log('aaa');

        const res = await client.signUp({
            ClientId: cliendid,
            Username: user,
            Password: pass
        });
        console.log(res);
    } catch(err) {
        //console.log(err);
        throw 'サインアップ(ユーザ登録)に失敗しました。';
    }
}


export { signup };


