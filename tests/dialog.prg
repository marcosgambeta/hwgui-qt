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

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
