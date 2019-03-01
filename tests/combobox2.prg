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
   LOCAL oCB1
   LOCAL oCB2
   LOCAL oCB3
   LOCAL xCB1
   LOCAL xCB2
   LOCAL xCB3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GET COMBOBOX oCB1 VAR xCB1 ITEMS {"AAAAA","BBBBB","CCCCC"} SIZE 130,30

   @ 20,60 GET COMBOBOX oCB2 VAR xCB2 ITEMS {"11111","22222","33333"} SIZE 130,30 DISABLED

   @ 20,100 GET COMBOBOX oCB3 VAR xCB3 ITEMS {"XXXXX","99999","ZZZZZ"} SIZE 130,30

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
