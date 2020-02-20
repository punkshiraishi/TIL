# bundle install 時のインストール先
デフォルトでは使用しているRubyの直下にgemがインストールされる。
OSアップデート時にnokogiriをインストールしろというエラーがでて下記URLのように修正

https://qiita.com/thunders/items/101c6b329830fb1fb27d

この変更でホームディレクトリ下の.bundle/configにpathがrailsプロジェクト下のvender/bundleにgemをインストールするようになってしまっていた。
そのため以下の記事のように解決。

https://qiita.com/punkshiraishi/items/4bb799afd8b04a69be89

