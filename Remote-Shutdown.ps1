#Sfift-JIS
$RHOST = (Read-Host �ڑ�����z�X�g���܂���IP�A�h���X�����)

$modekey = (Read-Host �s�������I�����ĉ������B [S]hutDown / [R]eboot)

$pushkey = (Read-Host $RHOST �ɑ΂��Ď��s�����܂����Hy/n)
if ($pushKey -eq "y") {
	if($modeKey -eq "s"){
		Write-Host �V���b�g�_�E���J�n�c
		Start-Sleep -s 1
		Stop-Computer -ComputerName $RHOST -force
		Write-Host �V���b�g�_�E�������܂����B
		Start-Sleep -s 5
	}
	if($modeKey -eq "r"){
		Write-Host �ċN���J�n�c
		Start-Sleep -s 1
		Restart-Computer -ComputerName $RHOST -force
		Write-Host �ċN�������܂����B
		Start-Sleep -s 5
	}
}
else {
	Write-Host �L�����Z�����܂����B
	Start-Sleep -s 5
}