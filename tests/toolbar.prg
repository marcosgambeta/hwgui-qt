/*

  HWGUIQt Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oToolBar

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN TOOLBAR oToolBar OF oMainWindow
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
