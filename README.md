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