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
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenu1
   LOCAL oMenu2
   LOCAL oMenu3

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenu1 TITLE "Menu &1"
         MENUITEM "Opção A1" ACTION hwgqt_MsgInfo("A1")
         MENUITEM "Opção A2" ACTION hwgqt_MsgInfo("A2")
         MENUITEM "Opção A3" ACTION hwgqt_MsgInfo("A3")
      END MENU
      BEGIN MENU oMenu2 TITLE "Menu &2" COLOR "red" BACKCOLOR "yellow"
         MENUITEM "Opção B1" ACTION hwgqt_MsgInfo("B1")
         MENUITEM "Opção B2" ACTION hwgqt_MsgInfo("B2")
         MENUITEM "Opção B3" ACTION hwgqt_MsgInfo("B3")
      END MENU
      BEGIN MENU oMenu3 TITLE "Menu &3"
         MENUITEM "Opção C1" ACTION hwgqt_MsgInfo("C1")
         MENUITEM "Opção C2" ACTION hwgqt_MsgInfo("C2")
         MENUITEM "Opção C3" ACTION hwgqt_MsgInfo("C3")
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
