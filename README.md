# ActionCableテスト二号　Slack風チャット編

参考　https://qiita.com/take18k_tech/items/00cc14c0eff45073ffc7

試しに実装してみるよー

----

0. 準備
    - config/initializers/generators.rbまで作成
    - Gemfileにgemを追加、そしてbundle install
    - 念の為に枝を変えろと言われたのでdevelop枝に移転する

1. Bootstrapの導入
    - Bootstrap4の導入の為にyarnを導入
    - Bootstrapを導入するのにRails7の新機能を使ってみる(詳細は　https://qiita.com/ryohashimoto/items/f5382478c78f296d8291#css-bundling%E3%81%AB%E3%82%88%E3%82%8Btailwind-css%E3%82%84postcss%E3%81%AA%E3%81%A9%E3%81%AE%E3%82%B5%E3%83%9D%E3%83%BC%E3%83%88)

2. 基本設定
    - ヘッダー（ナビバー）を追加し，レスポンシブ対応のためのmetaタグを追加
    - トップページ用のコントローラとビューを作成
    - トップページを設定
    - 日本語化とタイムゾーンの変更
    - Deviseでログイン機能を付ける
    - 全ページをログイン必須に変更

3. メッセージ投稿機能（Ajax）
    - メッセージを保存するためのデータベースとモデルを作成
    - 念のためnull: falseを追加
    - rails db:migrateでMessageデータベースを作成
    - モデルに関連付けとバリデーション
    - コントローラ側で，（この時点では）全メッセージを取得
    - 投稿フォームを作成する前に，コントローラを作成し，ルーティングを設定
    - メッセージを表示するためのビューと，投稿フォームを作成
    - <%= render @messages %>に挿入する部分テンプレートを作成
    - application.scssに最低限度追加(何故かパイプラインにCSSが乗ってくれないので、処理としてはstyle要素でhead要素へ直書き)
    - 動作確認のための seeds.rb を作成