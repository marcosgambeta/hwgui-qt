/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwgui.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oToolBar

   oApp := QApplication():new()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN TOOLBAR oToolBar OF oMainWindow
      TOOLBARITEM "New" ACTION hwg_MsgInfo("new") BITMAP "images/new.png" OF oToolBar
      TOOLBARITEM "Open" ACTION hwg_MsgInfo("open") BITMAP "images/open.png" OF oToolBar
      TOOLBARITEM "Save" ACTION hwg_MsgInfo("save") BITMAP "images/save.png" OF oToolBar
      SEPARATOR OF oToolBar
      TOOLBARITEM "Cut" ACTION hwg_MsgInfo("cut") BITMAP "images/cut.png" OF oToolBar
      TOOLBARITEM "Copy" ACTION hwg_MsgInfo("copy") BITMAP "images/copy.png" OF oToolBar
      TOOLBARITEM "Paste" ACTION hwg_MsgInfo("paste") BITMAP "images/paste.png" OF oToolBar
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN
