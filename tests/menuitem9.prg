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
   LOCAL aMenuItem

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   aMenuItem := array(5)

   BEGIN MENUBAR oMenuBar
      BEGIN MENU TITLE "Menu A"
         MENUITEM aMenuItem[1] OPTION "Opção A1" SHORTCUT "CTRL+1" ACTION hwgqt_MsgInfo("A1")
         MENUITEM aMenuItem[2] OPTION "Opção A2" SHORTCUT "CTRL+2" ACTION hwgqt_MsgInfo("A2")
         MENUITEM aMenuItem[3] OPTION "Opção A3" SHORTCUT "CTRL+3" ACTION hwgqt_MsgInfo("A3")
         MENUITEM aMenuItem[4] OPTION "Opção A4" SHORTCUT "CTRL+4" ACTION hwgqt_MsgInfo("A4")
         MENUITEM aMenuItem[5] OPTION "Opção A5" SHORTCUT "CTRL+5" ACTION hwgqt_MsgInfo("A5")
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
