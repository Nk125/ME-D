@echo off
:D
echo Drag the file to the prompt and press enter
set /p ftd=
set /p key="Insert the key="
%extd% /rc4 %ftd% meaes.txt %key%
%extd% /aesdecode meaes.txt decoded.%ftd% %key%
certutil -decode me.txt m.txt
echo S, D
del me.txt /f /s /q & del meaes.txt /f /s /q & del meaesrc4.txt /f /s /q
goto D
