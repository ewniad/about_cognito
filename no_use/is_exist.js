import {
   CognitoIdentityProvider
} from "@aws-sdk/client-cognito-identity-provider";


const client = new CognitoIdentityProvider({region: 'us-west-2'});

async function is_exist(user) {
    let filter = 'username = "' + user + '"';
    const list = await client.listUsers({
        UserPoolId: 'us-west-2_3VlT2SQUS',
        Filter: filter
    });
    return list.Users.length > 0 ? true: false;
}

export { is_exist };

