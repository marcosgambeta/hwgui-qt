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
   LOCAL oSay1
   LOCAL oSay2
   LOCAL oSay3
   LOCAL oFont1
   LOCAL oFont2
   LOCAL oFont3

   INIT APPLICATION oApp

   PREPARE FONT oFont1 NAME "Arial" WIDTH 14
   PREPARE FONT oFont2 NAME "Courier New" WIDTH 14 WEIGHT 50 ITALIC
   PREPARE FONT oFont3 NAME "Verdana" WIDTH 16 WEIGHT 25 UNDERLINE

   INIT DIALOG oDialog TITLE "Teste da classe HWGStatic" SIZE 320,240

   @ 10,10 SAY oSay1 CAPTION "Campo 1" SIZE 100,30 FONT oFont1 OF oDialog

   @ 10,50 SAY oSay2 CAPTION "Campo 2" SIZE 100,30 FONT oFont2 OF oDialog

   @ 10,90 SAY oSay3 CAPTION "Campo 3" FONT oFont3 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
