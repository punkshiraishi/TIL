# 他人のリポジトリをfolk cloneしたとき

- `git remote upstream https://github.com/ogihara-ryo/sharetil.git` でリモートに大元のリポジトリを設定
- `git fetch upstream` で最新版取得
- `git branch -a でorigin` とローカル以外のブランチ確認
- master に切り替えた後 upstream/master を merge して大元リポジトリの最新版をローカルにマージ
