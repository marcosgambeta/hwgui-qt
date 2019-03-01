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
   LOCAL oTab
   LOCAL oFontTab
   LOCAL oFontTab1
   LOCAL oFontTab2
   LOCAL oFontTab3
   LOCAL oFontTab4
   LOCAL oFontTab5

   INIT APPLICATION oApp

   PREPARE FONT oFontTab  NAME "Arial Bold" WIDTH 12
   PREPARE FONT oFontTab1 NAME "Arial" WIDTH 14
   PREPARE FONT oFontTab2 NAME "Courier New" WIDTH 14
   PREPARE FONT oFontTab3 NAME "Verdana" WIDTH 14
   PREPARE FONT oFontTab4 NAME "Times New Roman" WIDTH 14
   PREPARE FONT oFontTab5 NAME "Lucida Console" WIDTH 14

   INIT DIALOG oDialog TITLE "Teste da classe HWGTab" SIZE 640,480

   @ 10,10 TAB oTAB ITEMS {} SIZE 640-20,480-20 FONT oFontTab OF oDialog

   BEGIN PAGE "Página 1" OF oTab TOOLTIP "tooltip da página 1" WHATSTHIS "whatsthis da página 1" STYLESHEET "background-color: red;" FONT oFontTab1
   END PAGE OF oTab

   BEGIN PAGE "Página 2" OF oTab TOOLTIP "tooltip da página 2" WHATSTHIS "whatsthis da página 2" STYLESHEET "background-color: green;" FONT oFontTab2
   END PAGE OF oTab

   BEGIN PAGE "Página 3" OF oTab TOOLTIP "tooltip da página 3" WHATSTHIS "whatsthis da página 3" STYLESHEET "background-color: blue;" FONT oFontTab3
   END PAGE OF oTab

   BEGIN PAGE "Página 4" OF oTab TOOLTIP "tooltip da página 4" WHATSTHIS "whatsthis da página 4" STYLESHEET "background-color: cyan;" FONT oFontTab4
   END PAGE OF oTab

   BEGIN PAGE "Página 5" OF oTab TOOLTIP "tooltip da página 5" WHATSTHIS "whatsthis da página 5" STYLESHEET "background-color: orange;" FONT oFontTab5
   END PAGE OF oTab

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
