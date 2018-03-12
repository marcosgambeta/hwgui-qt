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
   LOCAL oSay

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HTimer" SIZE 320,240

   @ 20,20 SAY oSay CAPTION "" SIZE 130,30 OF oDialog

   SET TIMER oTimer OF oDialog VALUE 1000 ACTION {||oSay:setText(time())}

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
