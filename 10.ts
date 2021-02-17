//import { CognitoIdentityProviderClient, AddCustomAttributesCommand } from "@aws-sdk/client-cognito-identity-provider";

import {
   CognitoIdentityProvider,
   InitiateAuthCommand,
   InitiateAuthCommandInput
} from "@aws-sdk/client-cognito-identity-provider";

const client = new CognitoIdentityProvider({region: 'us-west-2'});

const params:InitiateAuthCommandInput = {
   AuthFlow: 'USER_PASSWORD_AUTH',
   AuthParameters: {
      USERNAME: 'user1',
      PASSWORD: 'password1'
   },
   ClientId: '60otdkb9vbdu39uko9b7au4r89' 
};

//      PASSWORD: 'password1'

const command = new InitiateAuthCommand(params);

async function fn() {
   try {
      console.log('aaa');
      const resp = await client.send(command);
      const token = resp.AuthenticationResult?.IdToken;
      console.log(token);
   } catch(err) {
      console.log('エラーです。');
   }
}

fn();
