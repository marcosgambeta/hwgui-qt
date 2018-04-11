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
   LOCAL oFont
   LOCAL oDialog

   INIT APPLICATION oApp

   PREPARE FONT oFont NAME "MS Sans Serif" HEIGHT 13

   INIT DIALOG oDialog TITLE "HWGUIQt - teste com cores" SIZE 320,240 FONT oFont

      @ 20,20 SAY "Say1" SIZE 120,30 COLOR "green" BACKCOLOR "yellow"

      @ 20,60 SAY "Say2" SIZE 120,30 COLOR "white" BACKCOLOR "blue"

      @ 20,100 SAY "Say3" SIZE 120,30 COLOR "yellow" BACKCOLOR "red"

      @ 20,140 SAY "Say4" SIZE 120,30 COLOR hwgqt_vcolor("000000") BACKCOLOR hwgqt_vcolor("FFFFFF")

      @ 20,180 SAY "Say5" SIZE 120,30 COLOR hwgqt_vcolor("FFFFFF") BACKCOLOR hwgqt_vcolor("000000")

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
