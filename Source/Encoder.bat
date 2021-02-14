@echo off
:E
echo Message:
echo Press CTRL+Z when you end
copy con m.txt
set /p key="Key to encode:"
certutil -encode m.txt me.txt
%extd% /aesencode me.txt meaes.txt %key%
%extd% /rc4 meaes.txt meaesrc4.txt %key%
echo Succesfully Encoded, view at %cd%\meaesrc4.txt
del m.txt /f /s /q & del me.txt /f /s /q & del meaes.txt /f /s /q
goto E
