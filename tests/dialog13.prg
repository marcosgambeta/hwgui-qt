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
   LOCAL oButton := array(6)

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 640,480

   @ 10,010 BUTTON oButton[1] CAPTION "Set Fixed Size" SIZE 120,40 ON CLICK (oDialog:nFixedWidth := 640, oDialog:nFixedHeight := 480)
   @ 10,050 BUTTON oButton[2] CAPTION "Unset Fixed Size" SIZE 120,40 ON CLICK (oDialog:nFixedWidth := 16777215, oDialog:nFixedHeight := 16777215)
   @ 10,090 BUTTON oButton[3] CAPTION "Set Minimum Size" SIZE 120,40 ON CLICK (oDialog:nMinimumWidth := 320, oDialog:nMinimumHeight := 240)
   @ 10,130 BUTTON oButton[4] CAPTION "Unset Minimum Size" SIZE 120,40 ON CLICK (oDialog:nMinimumWidth := 0, oDialog:nMinimumHeight := 0)
   @ 10,170 BUTTON oButton[5] CAPTION "Set Maximum Size" SIZE 120,40 ON CLICK (oDialog:nMaximumWidth := 800, oDialog:nMaximumHeight := 600)
   @ 10,210 BUTTON oButton[6] CAPTION "Unset Maximum Size" SIZE 120,40 ON CLICK (oDialog:nMaximumWidth := 16777215, oDialog:nMaximumHeight := 16777215)

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
