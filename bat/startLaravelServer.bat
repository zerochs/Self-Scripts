@echo off
ipconfig|find /i "IPv4">"%temp%\ip.txt"
set /p ip=<"%temp%\ip.txt"
set ip=%ip:. =%
set ip=%ip: =%
set ip=%ip::=%
set ip=%ip:IPv4ADDress=%
del /f /s /q "%temp%\ip.txt">nul2>nul
s:
cd .\server\php\public
@echo on
php -S %ip%:80

