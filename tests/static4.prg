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
   LOCAL oSay1
   LOCAL oSay2
   LOCAL oSay3

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGStatic - ON CLICK" SIZE 320,240

   @ 10,10 SAY oSay1 CAPTION "Campo 1" ON CLICK hwgqt_MsgInfo("oSay1","ON CLICK")

   @ 10,50 SAY oSay2 CAPTION "Campo 2" ON CLICK hwgqt_MsgInfo("oSay2","ON CLICK")

   @ 10,90 SAY oSay3 CAPTION "Campo 3" ON CLICK hwgqt_MsgInfo("oSay3","ON CLICK")

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
