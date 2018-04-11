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
   LOCAL oSay1
   LOCAL oSay2
   LOCAL oSay3
   LOCAL oSay4
   LOCAL oSay5
   LOCAL oFont1
   LOCAL oFont2
   LOCAL oFont3
   LOCAL oFont4
   LOCAL oFont5

   INIT APPLICATION oApp

   PREPARE FONT oFont1 NAME "Arial" WIDTH 14
   PREPARE FONT oFont2 NAME "Courier New" WIDTH 14
   PREPARE FONT oFont3 NAME "Verdana" WIDTH 14
   PREPARE FONT oFont4 NAME "Times New Roman" WIDTH 14
   PREPARE FONT oFont5 NAME "Lucida Console" WIDTH 14

   INIT DIALOG oDialog TITLE "Teste da classe HWGFont" SIZE 640,480

   @ 10,10 SAY oSay1 CAPTION "Fonte Arial" FONT oFont1 OF oDialog

   @ 10,50 SAY oSay2 CAPTION "Fonte Courier New" FONT oFont2 OF oDialog

   @ 10,90 SAY oSay3 CAPTION "Fonte Verdana" FONT oFont3 OF oDialog

   @ 10,130 SAY oSay4 CAPTION "Fonte Times New Roman" FONT oFont4 OF oDialog

   @ 10,170 SAY oSay5 CAPTION "Fonte Lucida Console" FONT oFont5 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
