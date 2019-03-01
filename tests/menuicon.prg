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
   LOCAL oMenuA
   LOCAL oMenuB

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Opções" OF oMenuBar
         MENUITEM "New"  ACTION hwgqt_MsgInfo("New") BITMAP "images/new.png"  OF oMenuA
         MENUITEM "Open" ACTION hwgqt_MsgInfo("Open") BITMAP "images/open.png" OF oMenuA
         MENUITEM "Save" ACTION hwgqt_MsgInfo("Save") BITMAP "images/save.png" OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Ações" OF oMenuBar
         MENUITEM "Cut"   ACTION hwgqt_MsgInfo("Cut") BITMAP "images/cut.png"   OF oMenuB
         MENUITEM "Copy"  ACTION hwgqt_MsgInfo("Copy") BITMAP "images/copy.png"  OF oMenuB
         MENUITEM "Paste" ACTION hwgqt_MsgInfo("Paste") BITMAP "images/paste.png" OF oMenuB
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
