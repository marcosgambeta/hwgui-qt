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
   LOCAL oToolBar1
   LOCAL oToolBar2

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN TOOLBAR oToolBar1 OF oMainWindow
      TOOLBARITEM "New" ACTION hwgqt_MsgInfo("new") BITMAP "images/new.png" OF oToolBar1
      TOOLBARITEM "Open" ACTION hwgqt_MsgInfo("open") BITMAP "images/open.png" OF oToolBar1
      TOOLBARITEM "Save" ACTION hwgqt_MsgInfo("save") BITMAP "images/save.png" OF oToolBar1
      SEPARATOR OF oToolBar1
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png" OF oToolBar1
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png" OF oToolBar1
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png" OF oToolBar1
   END TOOLBAR

   BEGIN TOOLBAR oToolBar2 OF oMainWindow
      TOOLBARITEM "New" ACTION hwgqt_MsgInfo("new") BITMAP "images/new.png" OF oToolBar2
      TOOLBARITEM "Open" ACTION hwgqt_MsgInfo("open") BITMAP "images/open.png" OF oToolBar2
      TOOLBARITEM "Save" ACTION hwgqt_MsgInfo("save") BITMAP "images/save.png" OF oToolBar2
      SEPARATOR OF oToolBar2
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png" OF oToolBar2
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png" OF oToolBar2
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png" OF oToolBar2
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
