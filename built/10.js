"use strict";
//import { CognitoIdentityProviderClient, AddCustomAttributesCommand } from "@aws-sdk/client-cognito-identity-provider";
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
Object.defineProperty(exports, "__esModule", { value: true });
const client_cognito_identity_provider_1 = require("@aws-sdk/client-cognito-identity-provider");
const client = new client_cognito_identity_provider_1.CognitoIdentityProvider({ region: 'us-west-2' });
const params = {
    AuthFlow: 'USER_PASSWORD_AUTH',
    AuthParameters: {
        USERNAME: 'user1',
        PASSWORD: 'password1'
    },
    ClientId: '60otdkb9vbdu39uko9b7au4r89'
};
//      PASSWORD: 'password1'
const command = new client_cognito_identity_provider_1.InitiateAuthCommand(params);
function fn() {
    var _a;
    return __awaiter(this, void 0, void 0, function* () {
        try {
            console.log('aaa');
            const resp = yield client.send(command);
            const token = (_a = resp.AuthenticationResult) === null || _a === void 0 ? void 0 : _a.IdToken;
            console.log(token);
        }
        catch (err) {
            console.log('エラーです。');
        }
    });
}
fn();
