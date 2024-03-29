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
   LOCAL oCB1
   LOCAL oCB2
   LOCAL oCB3
   LOCAL lCB1 := .F.
   LOCAL lCB2 := .T.
   LOCAL lCB3 := .F.
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de di�logo" AT 300,300 SIZE 320,240

   @ 20,20 GET CHECKBOX oCB1 VAR lCB1 CAPTION "checkbox1" SIZE 130,30 ;
      ON INIT {||qout("oCB1-init")} ;
      ON SIZE {||qout("oCB1-size")} ;
      ON PAINT {||qout("oCB1-paint")} ;
      ON GETFOCUS {||qout("oCB1-getfocus")} ;
      ON LOSTFOCUS {||qout("oCB1-lostfocus")}

   @ 20,60 GET CHECKBOX oCB2 VAR lCB2 CAPTION "checkbox2" SIZE 130,30 ;
      ON INIT {||qout("oCB2-init")} ;
      ON SIZE {||qout("oCB2-size")} ;
      ON PAINT {||qout("oCB2-paint")} ;
      ON GETFOCUS {||qout("oCB2-getfocus")} ;
      ON LOSTFOCUS {||qout("oCB2-lostfocus")}

   @ 20,100 GET CHECKBOX oCB3 VAR lCB3 CAPTION "checkbox3" SIZE 130,30 ;
      ON INIT {||qout("oCB3-init")} ;
      ON SIZE {||qout("oCB3-size")} ;
      ON PAINT {||qout("oCB3-paint")} ;
      ON GETFOCUS {||qout("oCB3-getfocus")} ;
      ON LOSTFOCUS {||qout("oCB3-lostfocus")}

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Ok' clicado")} ;
      ON GETFOCUS {||qout("oButtonOk-getfocus")} ;
      ON LOSTFOCUS {||qout("oButtonOk-lostfocus")}

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("bot�o 'Cancelar' clicado")} ;
      ON GETFOCUS {||qout("oButtonCancel-getfocus")} ;
      ON LOSTFOCUS {||qout("oButtonCancel-lostfocus")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
