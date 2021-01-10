@echo off
:E
echo Message:
echo Press CTRL+Z when you end
copy con m.txt
set /p key="Key to encrypt:"
certutil -encode m.txt me.txt
%extd% /aesencode me.txt meaes.txt %key%
%extd% /rc4 meaes.txt meaesrc4.txt %key%
echo S, E
del m.txt /f /s /q & del me.txt /f /s /q & del meaes.txt /f /s /q
goto E
