@ECHO Off
title JoeFolder - v.BBCREATIVE

:: SIMPLES BATCH SCRIPT PARA ESCONDER A PASTA "scripts" E TRANSFORMA-LA EM "Meu Computador" BLOQUEANDO O ACESSO A PASTA.
:: PARA DESBLOQUEAR DIGITE A SENHA paodebatata E A PASTA VOLTA A SER scripts COM TODOS OS ARQUIVOS DENTRO.

:: ALTERE O NOME DAS PASTAS E A SENHA PARA UMA PERSONALIZADA







:: CONFERE SE EXISTE A PASTA MEU COMPUTADOR, SE EXISTIR ELE VAI PARA O DESBLOQUEIO
:: SE A PASTA NÃO EXISTIR ELE VAI PARA A CRIAÇÃO DA PASTA 

if EXIST "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}" goto UNLOCK
if NOT EXIST scripts goto MDLOCKER


:CONFIRM                                                      
echo Deseja bloquear a pasta? (Y/N)
set /p "go="
:: /i menu parar de ser case sensitive
if /i %go%==Y goto LOCK
if /i %go%==N goto END
cls
echo Comando Invalido.
ping -n 3 127.0.0.1>nul
cls
goto CONFIRM

:LOCK
ren "scripts" "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}"
color 2
cls
echo FUCKING BLOCKED!
pause>nul
goto End


:UNLOCK
cls
echo Senha para desbloquear:
set /p "pass="
if NOT %pass%== bbcreative goto FAIL
ren "Meu computador.{20d04fe0-3aea-1069-a2d8-08002b30309d}" "scripts"
cls
color 2
echo UNBLOCKED!
echo.
pause
goto End


:FAIL
cls
echo Errou!
ping -n 3 127.0.0.1>nul
goto UNLOCK

:MDLOCKER
md scripts
echo 1. Criando pasta
ping -n 3 127.0.0.1>nul
cls
echo Sucesso...
echo.
echo.
ping -n 3 127.0.0.1>nul
cls
goto CONFIRM

:End

exit
