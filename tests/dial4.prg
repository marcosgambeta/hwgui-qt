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
   LOCAL oDial

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGDial" SIZE 320,240

   @ 10,10 DIAL oDial INIT 50 SIZE 200,200 NOTCHESVISIBLE

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
