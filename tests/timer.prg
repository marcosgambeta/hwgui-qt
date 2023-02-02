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
   LOCAL oDialog
   LOCAL oSay
   LOCAL oTimer

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGTimer" SIZE 320,240

   @ 20,20 SAY oSay CAPTION "" SIZE 130,30 OF oDialog

   SET TIMER oTimer OF oDialog VALUE 1000 ACTION {||oSay:setText(time())}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
