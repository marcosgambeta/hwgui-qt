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
   LOCAL oTrackBar

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGTrackBar" SIZE 320,240

   @ 10,10 TRACKBAR oTrackBar SIZE 240-20,20

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
