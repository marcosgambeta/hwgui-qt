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
   LOCAL nCB1 := 1
   LOCAL nCB2 := 2
   LOCAL nCB3 := 3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GET COMBOBOX oCB1 VAR nCB1 ITEMS {"AAAAA","BBBBB","CCCCC"} SIZE 130,30

   @ 20,60 GET COMBOBOX oCB2 VAR nCB2 ITEMS {"11111","22222","33333"} SIZE 130,30

   @ 20,100 GET COMBOBOX oCB3 VAR nCB3 ITEMS {"XXXXX","YYYYY","ZZZZZ"} SIZE 130,30

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ON CLICK oDialog:accept()

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   ? nCB1
   ? nCB2
   ? nCB3
   ?
   ? oCB1:nValue
   ? oCB1:cValue
   ? oCB2:nValue
   ? oCB2:cValue
   ? oCB3:nValue
   ? oCB3:cValue

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
