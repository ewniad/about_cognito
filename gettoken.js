import {
   CognitoIdentityProvider,
   InitiateAuthCommand
} from "@aws-sdk/client-cognito-identity-provider";


const client = new CognitoIdentityProvider({region: 'us-west-2'});

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

export { get_token };

