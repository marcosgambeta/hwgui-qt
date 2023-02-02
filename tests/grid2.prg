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
   LOCAL oGrid

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGGrid" SIZE 320,240

   @ 10,10 GRID oGrid SIZE 320-20,240-20 ITEMCOUNT 1000

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
