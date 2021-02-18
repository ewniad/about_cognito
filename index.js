import { signup } from './signup.js';
import { get_token } from './gettoken.js';
import { is_exist } from './is_exist.js';
import { confirm } from './confirm.js';
import { ask_and_get } from './ask_and_get.js';

import https from 'https';

const cliendid = '60otdkb9vbdu39uko9b7au4r89';

const user = await ask_and_get('ユーザ名? ');
const pass = await ask_and_get('パスワード? ');

console.log('user: ' + user + '\npass: ' + pass + '\nを登録します。');

if (await is_exist(user)) {
	console.log('ユーザ(' + user + ')は登録済みです。"');
	process.exit(0);
}

console.log('未登録であることが確認できましたのでサインアップを行います。');


await signup(user, pass, cliendid);

let code = await ask_and_get('確認コード? ');

await confirm(user, cliendid, code);

const token = await get_token(user, pass, cliendid);

const respose_str = await get_from_apigateway();

console.log(respose_str);

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



