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
   LOCAL oCB1
   LOCAL oCB2
   LOCAL oCB3
   LOCAL lCB1 := .F.
   LOCAL lCB2 := .T.
   LOCAL lCB3 := .F.
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GET CHECKBOX oCB1 VAR lCB1 CAPTION "checkbox1" SIZE 130,30
   @ 20,60 GET CHECKBOX oCB2 VAR lCB2 CAPTION "checkbox2" SIZE 130,30
   @ 20,100 GET CHECKBOX oCB3 VAR lCB3 CAPTION "checkbox3" SIZE 130,30

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
