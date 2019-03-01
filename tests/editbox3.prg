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
   LOCAL oEditBox1
   LOCAL oEditBox2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 EDITBOX oEditBox1 CAPTION "teste da classe HWGEditBox" SIZE 320-40,240-120-40

   @ 20,140 EDITBOX oEditBox2 CAPTION "teste da classe HWGEditBox" SIZE 320-40,240-120-40 DISABLED

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
