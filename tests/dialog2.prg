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
   LOCAL oButton

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 10,10 BUTTON oButton CAPTION "Clique aqui" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwg_MsgInfo("botão clicado", "Aviso")}

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
