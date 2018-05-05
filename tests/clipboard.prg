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
   LOCAL oEdit1
   LOCAL cEdit1 := "teste com clipboard"
   LOCAL oButtonCopy
   LOCAL oButtonRead

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 GET oEdit1 VAR cEdit1 SIZE 130,30

   @ 10,160 BUTTON oButtonCopy CAPTION "Copiar" SIZE 120,30 ;
      ON CLICK {||hwgqt_copystringtoclipboard(cEdit1)}

   @ 150,160 BUTTON oButtonRead CAPTION "Ler" SIZE 120,30 ;
      ON CLICK {||hwgqt_msginfo(hwgqt_getclipboardtext())}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
