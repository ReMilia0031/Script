@echo off
setlocal enabledelayedexpansion
echo;
net view
echo;
set /P HOST=VJP132-WIN10
set /P USER=remilia0031@gmail.com
echo;

set /P modeKey=�s�������I�����ĉ������B [S]hutDown / [R]eboot:
echo;

echo �ڑ��J�n�c
net use \\!HOST! /user:!USER!
if ERRORLEVEL 1 (
	echo �ڑ����s�B
	pause
	goto exit
) else (
	echo �ڑ����܂����B
	echo;
	timeout 1 >nul
	set /P pushKey=!HOST!�ɑ΂��Ď��s�����܂����Hy/n:
	echo;
	if "!pushKey!"=="y" (
		if "!modeKey!"=="s" (
			echo �V���b�g�_�E���J�n�c
			echo;
			timeout 1 >nul
			C:\Windows\System32\shutdown.exe -s -m \\%HOST%
			timeout 1 >nul
			net use \\!HOST! /delete >nul
			echo �ؒf���܂����B
			echo;
			echo �V���b�g�_�E�������܂����B
			echo;
			pause
		)
		if "!modeKey!"=="r" (
			echo �ċN���J�n�c
			echo;
			timeout 1 >nul
			C:\Windows\System32\shutdown.exe -r -m \\%HOST%
			timeout 1 >nul
			net use \\!HOST! /delete >nul
			echo �ؒf���܂����B
			echo;
			echo �ċN�������܂����B
			echo;
			pause
		)
	) else (
		echo �L�����Z�����܂����B
		echo;
		pause
	)
)