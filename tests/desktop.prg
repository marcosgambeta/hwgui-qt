/*

  HWGUIQt Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" AT 0,0 SIZE hwgqt_getdesktopwidth(),hwgqt_getdesktopheight()-30 MAIN

   ? "width=",hwgqt_getdesktopwidth()
   ? "height=",hwgqt_getdesktopheight()
   ?
   ? "x=",oMainWindow:oQt:x()
   ? "y=",oMainWindow:oQt:y()
   ? "width=",oMainWindow:oQt:width()
   ? "height=",oMainWindow:oQt:height()

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
