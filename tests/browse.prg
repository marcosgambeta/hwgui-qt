/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwgui.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oBrowse

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HBrowse" SIZE 320,240

   @ 10,10 BROWSE oBrowse SIZE 320-20,240-20

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
