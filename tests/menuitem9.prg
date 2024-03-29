/*

  HWGUIQt Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

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
         MENUITEM aMenuItem[1] OPTION "Op��o A1" SHORTCUT "CTRL+1" ACTION hwgqt_MsgInfo("A1")
         MENUITEM aMenuItem[2] OPTION "Op��o A2" SHORTCUT "CTRL+2" ACTION hwgqt_MsgInfo("A2")
         MENUITEM aMenuItem[3] OPTION "Op��o A3" SHORTCUT "CTRL+3" ACTION hwgqt_MsgInfo("A3")
         MENUITEM aMenuItem[4] OPTION "Op��o A4" SHORTCUT "CTRL+4" ACTION hwgqt_MsgInfo("A4")
         MENUITEM aMenuItem[5] OPTION "Op��o A5" SHORTCUT "CTRL+5" ACTION hwgqt_MsgInfo("A5")
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
