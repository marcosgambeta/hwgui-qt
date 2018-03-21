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
   LOCAL oButton

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240 COLOR "yellow" BACKCOLOR "red"

   @ 10,10 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30

   @ 10,130 BUTTON oButtonCancel CAPTION "Cancel" SIZE 120,30

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN