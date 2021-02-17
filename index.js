import { signup } from './signup.js';
import { get_token } from './gettoken.js';
import https from 'https';

const user = 'user4';
const pass = 'password4';

const cliendid = '60otdkb9vbdu39uko9b7au4r89';

//await signup(user, pass, cliendid);

const token = await get_token(user, pass, cliendid);

await get_from_apigateway();

async function get_from_apigateway() {
	const options = {
	  method: 'GET',
	  headers: {
		'token01': token
	  }
	};
	const url = 'https://i6hg24dmtg.execute-api.us-west-2.amazonaws.com/stage1';
	const req = https.request(url, options);

	req.addListener('response', function(res) {
//		res.pipe(process.stdout);
		res.setEncoding('utf8');
		res.on('data', function(chunk) {
			console.log(chunk);
		});
	});

	req.addListener('error', function(err) {
		console.log(err);
	});
	req.end();
}



