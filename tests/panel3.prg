/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwgui.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oPanel
   LOCAL oButton

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HPanel" SIZE 320,240

   @ 10,10 PANEL oPanel ;
      SIZE 320-20,240-20 ;
      TOOLTIP "tooltip do objeto oPanel" ;
      WHATSTHIS "whatsthis do objeto oPanel" ;
      STYLESHEET "background-color: lightgray;" ;
      OF oDialog

   @ 20,20 BUTTON oButton CAPTION "Fechar" ;
      SIZE 120,30 ;
      TOOLTIP "tooltip do objeto oButton" ;
      ON CLICK {||oDialog:accept()} ;
      OF oPanel

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
