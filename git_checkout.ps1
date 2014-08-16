#パラメーターは以下の順序で渡す
#
# 1.   リポジトリパス
# 2.   コミットハッシュ値
# 3～. チェックアウト対象ファイルパス(リポジトリルートからの絶対パス) 複数可

$env:Path += ";C:\Program Files (x86)\Git\bin";

Set-Location $args[0]

$commitHash = $args[$args.Length-1]
for($i=1;$i -lt $args.Length-1; $i++){
    $filePath = $args[$i]
    git checkout $commitHash $filePath
    git reset $filePath #ステージング解除
}