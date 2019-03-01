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
   LOCAL oRB1
   LOCAL oRB2
   LOCAL oRB3
   LOCAL oButton

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GROUPBOX oGroup CAPTION " Frequencia " SIZE 170,150 CHECKABLE NOCHECKED

   @ 20,20 RADIOBUTTON oRB1 CAPTION "Alta" SIZE 130,30 OF oGroup
   @ 20,60 RADIOBUTTON oRB2 CAPTION "Media" SIZE 130,30 OF oGroup
   @ 20,100 RADIOBUTTON oRB3 CAPTION "Baixa" SIZE 130,30 OF oGroup

   @ 10,180 BUTTON oButton CAPTION "Change" SIZE 120,30 ;
      ON CLICK {||oGroup:cTitle:=" Novo Titulo ",oGroup:lChecked:=.T.}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
