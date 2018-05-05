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
   LOCAL oLB
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 LISTBOX oLB ITEMS {"item1","item2","item3"} SIZE 130,130

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK hwgqt_MsgInfo("botão 'Ok' clicado")

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK hwgqt_MsgInfo("botão 'Cancelar' clicado")

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
