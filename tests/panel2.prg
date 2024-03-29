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
   LOCAL oPanel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGPanel" SIZE 320,240

   @ 10,10 PANEL oPanel ;
      SIZE 320-20,240-20 ;
      TOOLTIP "tooltip do objeto oPanel" ;
      WHATSTHIS "whatsthis do objeto oPanel" ;
      STYLESHEET "background-color: lightgray;" ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
