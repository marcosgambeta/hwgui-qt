/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240 ;
      ON MAXIMIZE qout("maximized") ;
      ON MINIMIZE qout("minimized") ;
      ON RESTORE qout("restored")

   // trick to allow maximize, minimize and restore (experimental)
   oDialog:oQt:setWindowFlags(Qt_Window)

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
