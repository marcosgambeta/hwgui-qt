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
   LOCAL oGroupA
   LOCAL oRB1A
   LOCAL oRB2A
   LOCAL oRB3A
   LOCAL oGroupB
   LOCAL oRB1B
   LOCAL oRB2B
   LOCAL oRB3B
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 400,240

   @ 20,20 GROUPBOX oGroupA CAPTION " Frequencia 1 " SIZE 170,150

   @ 20,20 RADIOBUTTON oRB1A CAPTION "Alta" SIZE 130,30 CHECKED ON CLICK qout("oRB1A-click") OF oGroupA
   @ 20,60 RADIOBUTTON oRB2A CAPTION "Media" SIZE 130,30 ON CLICK qout("oRB2A-click") OF oGroupA
   @ 20,100 RADIOBUTTON oRB3A CAPTION "Baixa" SIZE 130,30 ON CLICK qout("oRB3A-click") OF oGroupA

   @ 220,20 GROUPBOX oGroupB CAPTION " Frequencia 2 " SIZE 170,150

   @ 20,20 RADIOBUTTON oRB1B CAPTION "Alta" SIZE 130,30 ON CLICK qout("oRB1B-click") OF oGroupB
   @ 20,60 RADIOBUTTON oRB2B CAPTION "Media" SIZE 130,30 ON CLICK qout("oRB2B-click") OF oGroupB
   @ 20,100 RADIOBUTTON oRB3B CAPTION "Baixa" SIZE 130,30 CHECKED ON CLICK qout("oRB3B-click") OF oGroupB

   @ 10,180 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,180 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
