rem
rem HWGUIQt - biblioteca gr�fica para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI
rem
rem Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utiliza��o com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programa��o instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instala��o do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instala��o do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instala��o do compilador C/C++.
set CPPDIR=C:\MinGW32

rem Configura a vari�vel PATH, conforme as vari�veis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Pasta do Qt4xHb.
set QT4XHB_DIR=C:\Qt4xHb

rem Pasta lib do Qt4xHb.
set QT4XHB_INC_DIR=%QT4XHB_DIR%\include

rem Pasta lib do Qt4xHb.
set QT4XHB_LIB_DIR=%QT4XHB_DIR%\lib

%ComSpec%

rem Limpa as vari�veis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT4XHB_DIR=
set QT4XHB_INC_DIR=
set QT4XHB_LIB_DIR=

pause
