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
   LOCAL oEdit1
   LOCAL oEdit2
   LOCAL oEdit3
   LOCAL oEdit4
   LOCAL cEdit1 := ""
   LOCAL cEdit2 := ""
   LOCAL cEdit3 := "noborder"
   LOCAL cEdit4 := "readonly"
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GET oEdit1 VAR cEdit1 SIZE 130,30 PASSWORD

   @ 20,60 GET oEdit2 VAR cEdit2 SIZE 130,30 MAXLENGTH 10

   @ 20,100 GET oEdit3 VAR cEdit3 SIZE 130,30 NOBORDER

   @ 20,140 GET oEdit4 VAR cEdit4 SIZE 130,30 READONLY

   @ 10,180 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,180 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
