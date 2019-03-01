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
   LOCAL oGroup
   LOCAL oCB1
   LOCAL oCB2
   LOCAL oCB3
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GROUPBOX oGroup CAPTION " Configuração " SIZE 170,150

   @ 20,20 CHECKBOX oCB1 CAPTION "Parâmetro 1" SIZE 130,30 OF oGroup
   @ 20,60 CHECKBOX oCB2 CAPTION "Parâmetro 2" SIZE 130,30 OF oGroup
   @ 20,100 CHECKBOX oCB3 CAPTION "Parâmetro 3" SIZE 130,30 OF oGroup

   @ 10,180 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,180 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
