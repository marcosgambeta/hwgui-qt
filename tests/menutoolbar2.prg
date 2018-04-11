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
   LOCAL oMenuA
   LOCAL oMenuB
   LOCAL oToolBar1
   LOCAL oToolBar2

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Opções" OF oMenuBar
         MENUITEM "New" ACTION hwgqt_MsgInfo("new") BITMAP "images/new.png" OF oMenuA
         MENUITEM "Open" ACTION hwgqt_MsgInfo("open") BITMAP "images/open.png" OF oMenuA
         MENUITEM "Save" ACTION hwgqt_MsgInfo("save") BITMAP "images/save.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png" OF oMenuA
         MENUITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png" OF oMenuA
         MENUITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Sair" ACTION oApp:quit() OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Ajuda" OF oMenuBar
         MENUITEM "Sobre este programa" ACTION hwgqt_MsgInfo("Teste com menus e toolbar da HWGUIQt", "Sobre este programa") OF oMenuB
         MENUITEM "Sobre o Qt" ACTION oApp:aboutQt() OF oMenuB
      END MENU
   END MENUBAR

   BEGIN TOOLBAR oToolBar1 OF oMainWindow
      TOOLBARITEM "New" ACTION hwgqt_MsgInfo("toolbar 1 - new") BITMAP "images/new.png" OF oToolBar1
      TOOLBARITEM "Open" ACTION hwgqt_MsgInfo("toolbar 1 - open") BITMAP "images/open.png" OF oToolBar1
      TOOLBARITEM "Save" ACTION hwgqt_MsgInfo("toolbar 1 - save") BITMAP "images/save.png" OF oToolBar1
      SEPARATOR OF oToolBar1
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("toolbar 1 - cut") BITMAP "images/cut.png" OF oToolBar1
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("toolbar 1 - copy") BITMAP "images/copy.png" OF oToolBar1
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("toolbar 1 - paste") BITMAP "images/paste.png" OF oToolBar1
   END TOOLBAR

   BEGIN TOOLBAR oToolBar2 OF oMainWindow
      TOOLBARITEM "New" ACTION hwgqt_MsgInfo("toolbar 2 - new") BITMAP "images/new.png" OF oToolBar2
      TOOLBARITEM "Open" ACTION hwgqt_MsgInfo("toolbar 2 - open") BITMAP "images/open.png" OF oToolBar2
      TOOLBARITEM "Save" ACTION hwgqt_MsgInfo("toolbar 2 - save") BITMAP "images/save.png" OF oToolBar2
      SEPARATOR OF oToolBar2
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("toolbar 2 - cut") BITMAP "images/cut.png" OF oToolBar2
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("toolbar 2 - copy") BITMAP "images/copy.png" OF oToolBar2
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("toolbar 2 - paste") BITMAP "images/paste.png" OF oToolBar2
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
