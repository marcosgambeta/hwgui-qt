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
   LOCAL oLB1
   LOCAl nLB1 := 1
   LOCAL oLB2
   LOCAl nLB2 := 3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 640,480

   @ 20,20 GET LISTBOX oLB1 VAR nLB1 ITEMS {"item 1.1","item 1.2","item 1.3"} SIZE 130,130

   @ 20,220 GET LISTBOX oLB2 VAR nLB2 ITEMS {"item 2.1","item 2.2","item 2.3"} SIZE 130,130

   @ 10,420 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK oDialog:accept()

   @ 150,420 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   hwgqt_msginfo(alltrim(str(nLB1)))
   hwgqt_msginfo(alltrim(str(nLB2)))

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
