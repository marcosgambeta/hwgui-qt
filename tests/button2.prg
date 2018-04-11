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
   LOCAL oButton1
   LOCAL oButton2

   INIT APPLICATION oApp
   
   INIT DIALOG oDialog TITLE "Teste da classe HWGButton" SIZE 320,240

   @ 10,10 BUTTON oButton1 CAPTION "Botão 1" SIZE 120,40 ;
      ON INIT {||hwgqt_MsgInfo("Botão 1 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 1 - ON CLICK")} ;
      OF oDialog

   @ 10,70 BUTTON oButton2 CAPTION "Botão 2" SIZE 120,40 ;
      ON INIT {||hwgqt_MsgInfo("Botão 2 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 2 - ON CLICK")} ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
