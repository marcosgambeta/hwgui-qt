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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGButton" SIZE 320,240

   @ 10,10 BUTTON oButton1 CAPTION "&Novo" SIZE 120,40 ;
      ICON "images/new.png" ;
      ON INIT {||hwgqt_MsgInfo("Botão 1 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 1 - ON CLICK")}

   @ 10,70 BUTTON oButton2 CAPTION "&Abrir" SIZE 120,40 ;
      ICON "images/open.png" ;
      ON INIT {||hwgqt_MsgInfo("Botão 2 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 2 - ON CLICK")}

   @ 10,140 BUTTON oButton3 CAPTION "&Salvar" SIZE 120,40 ;
      ICON "images/save.png" ;
      ON INIT {||hwgqt_MsgInfo("Botão 3 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 3 - ON CLICK")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
