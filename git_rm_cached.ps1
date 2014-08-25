#パラメーターは以下の順序で渡す
# 
# 1.   コミットハッシュ値(★未使用)
# 2.   リポジトリパス
# 3～. チェックアウト対象ファイルパス(リポジトリルートからの絶対パス) 複数可

$env:Path += ";C:\Program Files (x86)\Git\bin";

Set-Location $args[1]

for($i=2;$i -lt $args.Length; $i++){
    $filePath = $args[$i]
    git rm --cached $filePath
}

git commit -m "管理対象から除外"