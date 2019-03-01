rem
rem HWGUIQt - biblioteca gráfica para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI
rem
rem Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
rem
rem Prompt de comando para utilização com MinGW.
rem

rem Cria um PATH reduzido. Embora opcional, evita conflitos com outras
rem ferramentas de programação instaladas no ambiente de desenvolvimento.
set PATH=%SYSTEMROOT%;%SYSTEMROOT%\system32

rem Pasta da instalação do Qt Framework.
set QTDIR=C:\Qt\4.8.7

rem Pasta da instalação do Harbour.
set HBDIR=C:\Harbour

rem Pasta da instalação do compilador C/C++.
set CPPDIR=C:\MinGW32

rem Configura a variável PATH, conforme as variáveis definidas acima.
set PATH=%QTDIR%\bin;%HBDIR%\bin;%CPPDIR%\bin;%PATH%

rem Pasta do Qt4xHb.
set QT4XHB_DIR=C:\Qt4xHb

rem Pasta lib do Qt4xHb.
set QT4XHB_INC_DIR=%QT4XHB_DIR%\include

rem Pasta lib do Qt4xHb.
set QT4XHB_LIB_DIR=%QT4XHB_DIR%\lib

%ComSpec%

rem Limpa as variáveis criadas.
set QTDIR=
set HBDIR=
set CPPDIR=
set QT4XHB_DIR=
set QT4XHB_INC_DIR=
set QT4XHB_LIB_DIR=

pause
