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
   LOCAL oEdit1
   LOCAL oEdit2
   LOCAL oEdit3
   LOCAL cEdit1 := ""
   LOCAL cEdit2 := ""
   LOCAL cEdit3 := ""
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 GET oEdit1 VAR cEdit1 SIZE 130,30 TOOLTIP "tooltip do objeto oEdit1" WHATSTHIS "whatsthis do objeto oEdit1"

   @ 20,60 GET oEdit2 VAR cEdit2 SIZE 130,30 TOOLTIP "tooltip do objeto oEdit2" WHATSTHIS "whatsthis do objeto oEdit2"

   @ 20,100 GET oEdit3 VAR cEdit3 SIZE 130,30 TOOLTIP "tooltip do objeto oEdit3" WHATSTHIS "whatsthis do objeto oEdit3"

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Ok' clicado")}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
