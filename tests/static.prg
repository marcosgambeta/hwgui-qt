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
   LOCAL oDialog
   LOCAL oSay1
   LOCAL oSay2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGStatic" SIZE 320,240

   @ 10,10 SAY oSay1 CAPTION "Campo 1" SIZE 100,30 OF oDialog

   @ 10,50 SAY oSay2 CAPTION "Campo 2" SIZE 100,30 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
