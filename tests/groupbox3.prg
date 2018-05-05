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
   LOCAL oGroup
   LOCAL oRB1
   LOCAL oRB2
   LOCAL oRB3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GROUPBOX oGroup CAPTION " Frequencia " SIZE 170,150 CHECKABLE

   @ 20,20 RADIOBUTTON oRB1 CAPTION "Alta" SIZE 130,30 OF oGroup
   @ 20,60 RADIOBUTTON oRB2 CAPTION "Media" SIZE 130,30 OF oGroup
   @ 20,100 RADIOBUTTON oRB3 CAPTION "Baixa" SIZE 130,30 OF oGroup

   @ 10,180 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,180 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
