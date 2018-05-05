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
   LOCAL oTab
   LOCAL oFontTab

   INIT APPLICATION oApp

   PREPARE FONT oFontTab NAME "Arial Bold" WIDTH 12

   INIT DIALOG oDialog TITLE "Teste da classe HWGTab" SIZE 640,480

   @ 10,10 TAB oTAB ITEMS {} SIZE 640-20,480-20 FONT oFontTab OF oDialog

   BEGIN PAGE "Página 1" OF oTab STYLESHEET "background-color: red;"
   END PAGE OF oTab

   BEGIN PAGE "Página 2" OF oTab STYLESHEET "background-color: green;"
   END PAGE OF oTab

   BEGIN PAGE "Página 3" OF oTab STYLESHEET "background-color: blue;"
   END PAGE OF oTab

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
