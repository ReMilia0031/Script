@echo off
setlocal enabledelayedexpansion
echo;
net view
echo;
set /P HOST=VJP132-WIN10
set /P USER=remilia0031@gmail.com
echo;

set /P modeKey=行う動作を選択して下さい。 [S]hutDown / [R]eboot:
echo;

echo 接続開始…
net use \\!HOST! /user:!USER!
if ERRORLEVEL 1 (
	echo 接続失敗。
	pause
	goto exit
) else (
	echo 接続しました。
	echo;
	timeout 1 >nul
	set /P pushKey=!HOST!に対して実行させますか？y/n:
	echo;
	if "!pushKey!"=="y" (
		if "!modeKey!"=="s" (
			echo シャットダウン開始…
			echo;
			timeout 1 >nul
			C:\Windows\System32\shutdown.exe -s -m \\%HOST%
			timeout 1 >nul
			net use \\!HOST! /delete >nul
			echo 切断しました。
			echo;
			echo シャットダウンさせました。
			echo;
			pause
		)
		if "!modeKey!"=="r" (
			echo 再起動開始…
			echo;
			timeout 1 >nul
			C:\Windows\System32\shutdown.exe -r -m \\%HOST%
			timeout 1 >nul
			net use \\!HOST! /delete >nul
			echo 切断しました。
			echo;
			echo 再起動させました。
			echo;
			pause
		)
	) else (
		echo キャンセルしました。
		echo;
		pause
	)
)