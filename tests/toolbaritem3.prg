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
   LOCAL oToolBar
   LOCAL aToolBarItems := array(3)

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN TOOLBAR oToolBar
      TOOLBARITEM aToolBarItems[1] OPTION "Visible"   ACTION aToolBarItems[3]:lVisible := .T. BITMAP "images/new.png"
      TOOLBARITEM aToolBarItems[2] OPTION "Invisible" ACTION aToolBarItems[3]:lVisible := .F. BITMAP "images/open.png"
      TOOLBARITEM aToolBarItems[3] OPTION "Test"      ACTION hwgqt_msginfo("test") BITMAP "images/save.png"
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
