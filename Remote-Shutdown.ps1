#Sfift-JIS
$RHOST = (Read-Host 接続するホスト名またはIPアドレスを入力)

$modekey = (Read-Host 行う動作を選択して下さい。 [S]hutDown / [R]eboot)

$pushkey = (Read-Host $RHOST に対して実行させますか？y/n)
if ($pushKey -eq "y") {
	if($modeKey -eq "s"){
		Write-Host シャットダウン開始…
		Start-Sleep -s 1
		Stop-Computer -ComputerName $RHOST -force
		Write-Host シャットダウンさせました。
		Start-Sleep -s 5
	}
	if($modeKey -eq "r"){
		Write-Host 再起動開始…
		Start-Sleep -s 1
		Restart-Computer -ComputerName $RHOST -force
		Write-Host 再起動させました。
		Start-Sleep -s 5
	}
}
else {
	Write-Host キャンセルしました。
	Start-Sleep -s 5
}