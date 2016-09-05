set :stage, :development #環境名
#各サーバの役割を記述
role :app, %w{kozawa@localhost} #アプリケーションサーバ
role :web, %w{kozawa@localhost} #webサーバ
role :db,  %w{kozawa@localhost} #DBサーバ
#サーバ情報記述
server 'localhost', #サーバ名
user: 'kozawa', #実行ユーザ
roles: %w{web app db}, # サーバの役割
ssh_options: {
    keys: %w(~/.ssh/id_rsa),
    auth_methods: %w(publickey), # 認証方法 passwordも可能
    #password: 'xxxxx' #password指定
}
