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
   LOCAL oEdit1
   LOCAL oEdit2
   LOCAL oEdit3
   LOCAL cEdit1 := ""
   LOCAL cEdit2 := ""
   LOCAL cEdit3 := ""
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   // teste com mascaras no estilo Qt

   @ 20,20 GET oEdit1 VAR cEdit1 SIZE 130,30 INPUTMASK "99999-999"

   @ 20,60 GET oEdit2 VAR cEdit2 SIZE 130,30 INPUTMASK "999.999.999-99"

   @ 20,100 GET oEdit3 VAR cEdit3 SIZE 130,30 INPUTMASK "(00)00000-0000"

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||qout(cEdit1),qout(cEdit2),qout(cEdit3),oDialog:accept()}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
