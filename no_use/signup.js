import {
   CognitoIdentityProvider,
   InitiateAuthCommand,
   SignUpCommand
} from "@aws-sdk/client-cognito-identity-provider";
import { fileURLToPath } from "url";

const client = new CognitoIdentityProvider({region: 'us-west-2'});

async function signup(user, pass, cliendid) {
    try {
        const res = await client.signUp({
            ClientId: cliendid,
            Username: user,
            Password: pass,
            UserAttributes: [
                {
                    Name: 'email',
                    Value: 'eijirou.wakabayashi@unictgroup.com'
                }
            ]
        });
        console.log(res);
    } catch(err) {
        //console.log(err);
        throw 'サインアップ(ユーザ登録)に失敗しました。';
    }
}

export { signup };
