import { signup } from './signup.js';
import { get_token } from './gettoken.js';
import https from 'https';

const user = 'user4';
const pass = 'password4';

const cliendid = '60otdkb9vbdu39uko9b7au4r89';

await signup(user, pass, cliendid);

//const token = await get_token(user, pass, cliendid);

//const respose_str = await get_from_apigateway();

//console.log(respose_str);

async function get_from_apigateway() {
	const options = {
	  method: 'GET',
	  headers: {
		'token01': token
	  }
	};
	const url = 'https://i6hg24dmtg.execute-api.us-west-2.amazonaws.com/stage1';

	return new Promise(function(resolve, reject) {
		const req = https.request(url, options);
		req.addListener('response', function(res) {
			res.setEncoding('utf8');
			let str = '';
			res.on('data', function(chunk) {
				str += chunk;
			});
			res.on('end', function() {
				resolve(str);
			});
		});
		req.addListener('error', function(err) {
			reject(err);
		});
		req.end();
	});

}



