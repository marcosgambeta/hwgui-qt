/*

  HWGUIQt Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow

   ? "testando criacao da janela principal (modo fullscreen)"
   ?
   ? "feche a janela (ALT+F4) para encerrar a aplicacao"

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   ACTIVATE WINDOW oMainWindow FULLSCREEN

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
