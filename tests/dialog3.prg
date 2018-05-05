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
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240 ;
      ON INIT {||qout("oDialog-init")} ;
      ON SIZE {||qout("oDialog-size")} ;
      ON GETFOCUS {||qout("oDialog-getfocus")} ;
      ON LOSTFOCUS {||qout("oDialog-lostfocus")}

   @ 10,10 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão clicado")} ;
      ON INIT {||qout("oButtonOk-init")} ;
      ON SIZE {||qout("oButtonOk-size")} ;
      ON GETFOCUS {||qout("oButtonOk-getfocus")} ;
      ON LOSTFOCUS {||qout("oButtonOk-lostfocus")}

   @ 10,130 BUTTON oButtonCancel CAPTION "Cancel" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão clicado")} ;
      ON INIT {||qout("oButtonCancel-init")} ;
      ON SIZE {||qout("oButtonCancel-size")} ;
      ON GETFOCUS {||qout("oButtonCancel-getfocus")} ;
      ON LOSTFOCUS {||qout("oButtonCancel-lostfocus")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
