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
   LOCAL oMainWindow
   LOCAL oMenuBar
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

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar
      BEGIN MENU TITLE "Menu A"
         MENUITEM "Opção A1" FONT oFont1 ACTION hwgqt_MsgInfo("A1")
         MENUITEM "Opção A2" FONT oFont2 ACTION hwgqt_MsgInfo("A2")
         MENUITEM "Opção A3" FONT oFont3 ACTION hwgqt_MsgInfo("A3")
         MENUITEM "Opção A4" FONT oFont4 ACTION hwgqt_MsgInfo("A4")
         MENUITEM "Opção A5" FONT oFont5 ACTION hwgqt_MsgInfo("A5")
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
