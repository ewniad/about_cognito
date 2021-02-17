import {
   CognitoIdentityProvider,
   InitiateAuthCommand,
   SignUpCommand
} from "@aws-sdk/client-cognito-identity-provider";
import https from 'https';

const user = 'user3';
const pass = 'password3';

const cliendid = '60otdkb9vbdu39uko9b7au4r89';
const url = 'https://i6hg24dmtg.execute-api.us-west-2.amazonaws.com/stage1';

const client = new CognitoIdentityProvider({region: 'us-west-2'});

async function signup(user, pass, cliendid) {
    try {
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

await signup(user, pass, cliendid);





async function get_token(user, pass, cliendid) {
    try {
        const params= {
            AuthFlow: 'USER_PASSWORD_AUTH',
            AuthParameters: {
                USERNAME: user,
                PASSWORD: pass
            },
            ClientId: cliendid 
        };
        const resp = await client.initiateAuth(params);
        const token = resp.AuthenticationResult?.IdToken;
        return token;
    } catch {
        console.log('トークンの取得に失敗しました。');
    }
}

const token = await get_token(user, pass, cliendid);

const options = {
  method: 'GET',
  headers: {
    'token01': token
  }
};

const req = https.request(url, options);
req.addListener('response', function(res) {
    res.pipe(process.stdout);
});
req.addListener('error', function(err) {
    console.log(err);
});
req.end();







