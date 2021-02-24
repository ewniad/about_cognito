# about_cognito
AWS Cognito について。

## 概要
AWS Cognito による認証を確認するためのサンプル・プログラム。  


### 構成
#### 動作環境
##### ローカル
- Bash  
- Node.js  
- WEBブラウザ  

##### AWS(us-west-2)
- API Gateway  
  + API: `ew_03`  
- Cognito  
  + User Pool: `ew_02`  


#### ローカル・ファイル
- index.css  
- index.html  
- start_server.js  
- stop_server.sh  
- token.html  

### 動作
1. Bashシェルからサーバを起動  
`node start_server.js`  
1. ブラウザからサーバに接続  
`http://localhost:3000/`  
1. 「tokenログイン」をクリック  
1. ログイン画面が表示されるのでIDとパスワードを入力
1. API Gateway からのレスポンス「this is responce ..」が表示される。
1. 起動シェルで`Ctrl+C`もしくは、別シェルで`stop_server.sh`でサーバを終了させる。

## 設定において留意すべき点
設定項目は多岐にわたるがそのなかで設定如何によって動作に支障をきたす項目のみ記する。

### Cognito  
- App clients > App client secret ===> OFF  

理由はわからないがとにかくOFFにする。この設定はUser Pool作成時にしかできない。  
OFFにすると`(no secret key)`と表示される。ONの場合は項目そのものが表示されない。  
> Clear the option Generate client secret for the purposes of this getting started exercise, as it would not be secure to send it on the URL using client-side JavaScript. The client secret is used by applications that have a server-side component that can secure the client secret.  
https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-configuring-app-integration.html

- `Auth Flows Configuration` ===> とりあえず全部ON  
OFFにしても構わないものもあるが全部ONでも支障なし。

- App client setting > Callback URL  ===> 要設定  
ログイン成功後にリダイレクトされるURLを記す。`localhost`も指定できる。

- Allowed OAuth Flows ===> (ON)implicit grant  
Authorization code grant もONできる。

- Allowed OAuth Scope ===> とりあえず全部ON  

- Domain name  ===> 要設定  
Amazonn Congnito domain の入力ボックスに任意の名称を入力し使えるか確認ボタンをおしてそれが使用可能かを確かめる。  
このサンプルでは`ew02`と指定している。
`https://ew02.auth.us-west-2.amazoncognito.com`がAWSの用意するログイン用UIのURLとなる。


### API Gateway  
Cognito認証に関連する箇所だけ記す。  

- Authorizers  
1. Create New Authorizer  
1. Name: 適当な名前  
1. Type:  Cognito
1. RegionとCognito User Pool の名称  
1. Token Source: Authorization  

- Resources > Method Request > Authorization  
Authorizerの名前  

- Resourses > Actions > Enable CORS  
この設定は最後におこなう。


## 解説
このサンプルではIDトークンによる認証を行っている。
起動(`node start_server.js`)したサーバに接続(`http://localhost:3000/`)し
リンク(`tokenログイン`)をクリックするとAWSが提供するログイン画面(Hosted UI)が
表示される。このURLは以下。

```
https://your_domain/login?response_type=token&client_id=your_app_client_id&redirect_uri=your_callback_url
```

https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-configuring-app-integration.html  

このサンプルでは以下。  

```
https://ew02.auth.us-west-2.amazoncognito.com/login?response_type=token&client_id=7ndv6d4sf47tk42gss7vl46oo7&redirect_uri=http://localhost:3000/token/
```

`response_type`に`token`と指定しているので`redirect_uri`に指定した
`http://localhost:3000/token/`にトークンが以下の形式で送られる。

```
https://www.example.com/#id_token=123456789tokens123456789&expires_in=3600&token_type=Bearer  
```

`#id_token=1234...`以下がトークンなのだが、httpではこの部分すなわち`#`以降はURLとして認識されないのでNode.jsではその値(トークン)を取得することができない。
しかしブラウザ上では`window.location.hash`によって取得することができる。

こうして取得したIDトークンを`Authorization`ヘッダーに設定することによってAPI Gatewayの認証を得ることができる。






