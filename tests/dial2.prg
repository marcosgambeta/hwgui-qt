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
   LOCAL oDial1
   LOCAL oDial2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGDial" SIZE 320,240

   @ 10,10 DIAL oDial1 INIT 0 SIZE 100,100

   @ 10,120 DIAL oDial2 INIT 50 SIZE 100,100

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
