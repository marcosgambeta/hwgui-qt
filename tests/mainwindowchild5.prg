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
   LOCAL oToolBar

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar
      BEGIN MENU oMenuA TITLE "Opções"
         MENUITEM "New" ACTION ChildWindow1(oMainWindow) BITMAP "images/new.png"
         MENUITEM "Open" ACTION ChildWindow2(oMainWindow) BITMAP "images/open.png"
         MENUITEM "Save" ACTION ChildWindow3(oMainWindow) BITMAP "images/save.png"
         SEPARATOR
         MENUITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png"
         MENUITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png"
         MENUITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png"
         SEPARATOR
         MENUITEM "Sair" ACTION oMainWindow:close()
      END MENU
      BEGIN MENU oMenuB TITLE "Ajuda"
         MENUITEM "Sobre este programa" ACTION hwgqt_MsgInfo("Teste com MDI", "Sobre este programa")
         MENUITEM "Sobre o Qt" ACTION oApp:aboutQt()
      END MENU
   END MENUBAR

   BEGIN TOOLBAR oToolBar
      TOOLBARITEM "New" ACTION ChildWindow1(oMainWindow) BITMAP "images/new.png"
      TOOLBARITEM "Open" ACTION ChildWindow2(oMainWindow) BITMAP "images/open.png"
      TOOLBARITEM "Save" ACTION ChildWindow3(oMainWindow) BITMAP "images/save.png"
      SEPARATOR OF oToolBar
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png"
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png"
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png"
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION ChildWindow1 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 1" FIXED SIZE 640,480 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL

STATIC FUNCTION ChildWindow2 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 2" FIXED SIZE 640,480 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL

STATIC FUNCTION ChildWindow3 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 3" FIXED SIZE 640,480 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL
