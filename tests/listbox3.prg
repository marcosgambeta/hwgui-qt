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
   LOCAL oLB
   LOCAL oButton

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 LISTBOX oLB ITEMS {"item1","item2","item3"} INIT 2 SIZE 130,130

   @ 10,160 BUTTON oButton CAPTION "Clear" SIZE 120,30 ON CLICK (oLB:clear(),qout(len(oLB:aItems)),qout(oLB:nValue))

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
