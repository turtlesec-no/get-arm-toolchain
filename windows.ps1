Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')
scoop bucket add extras
scoop install gcc-arm-none-eabi
echo "$HOME/scoop/apps/gcc-arm-none-eabi/10-2020-q4-major/bin" | Out-File -FilePath $env:GITHUB_PATH -Encoding utf8 -Append
$pattern = '[\\/]'
$string = "$HOME/scoop/apps/gcc-arm-none-eabi/10-2020-q4-major/bin"
$string = $string -replace $pattern, '/'
echo "INSTALL_DIR=$string" | Out-File -FilePath $env:GITHUB_ENV -Encoding utf8 -Append
arm-none-eabi-gcc --version
