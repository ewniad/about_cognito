import {
   CognitoIdentityProvider
} from "@aws-sdk/client-cognito-identity-provider";

const client = new CognitoIdentityProvider({region: 'us-west-2'});

async function confirm(user, clientid, code) {
    return await client.confirmSignUp({
        Username: user,
        ClientId: clientid,
        ConfirmationCode: code
    });
}

export { confirm };
