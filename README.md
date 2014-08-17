## CustomActionScript For SourceTree

SourceTreeの「カスタム操作」スクリプトたち。
スクリプト概要・設定方法は、[ここ](http://ken200.github.io/SourceTreeCustomActions/) を参照。




## スクリプト一覧

### 選択ファイルのチェックアウト

選択したファイル(複数可)をチェックアウトする。過去コミットファイル内容で上書きしたい場合に使う想定。

スクリプトファイル名: git_checkout.ps1

パラメーター: <スクリプトパス> $REPO $SHA $FILE

