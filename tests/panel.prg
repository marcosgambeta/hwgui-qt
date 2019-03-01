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
   LOCAL oPanel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGPanel" SIZE 320,240

   @ 10,10 PANEL oPanel ;
      SIZE 200,200 ;
      TOOLTIP "tooltip do objeto oPanel" ;
      WHATSTHIS "whatsthis do objeto oPanel" ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
