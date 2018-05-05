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

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Opções" OF oMenuBar
         MENUITEM "New" ACTION ChildWindow1(oMainWindow) BITMAP "images/new.png" OF oMenuA
         MENUITEM "Open" ACTION ChildWindow2(oMainWindow) BITMAP "images/open.png" OF oMenuA
         MENUITEM "Save" ACTION ChildWindow3(oMainWindow) BITMAP "images/save.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png" OF oMenuA
         MENUITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png" OF oMenuA
         MENUITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png" OF oMenuA
         SEPARATOR OF oMenuA
         MENUITEM "Sair" ACTION oApp:quit() OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Ajuda" OF oMenuBar
         MENUITEM "Sobre este programa" ACTION hwgqt_MsgInfo("Teste com MDI", "Sobre este programa") OF oMenuB
         MENUITEM "Sobre o Qt" ACTION oApp:aboutQt() OF oMenuB
      END MENU
   END MENUBAR

   BEGIN TOOLBAR oToolBar OF oMainWindow
      TOOLBARITEM "New" ACTION ChildWindow1(oMainWindow) BITMAP "images/new.png" OF oToolBar
      TOOLBARITEM "Open" ACTION ChildWindow2(oMainWindow) BITMAP "images/open.png" OF oToolBar
      TOOLBARITEM "Save" ACTION ChildWindow3(oMainWindow) BITMAP "images/save.png" OF oToolBar
      SEPARATOR OF oToolBar
      TOOLBARITEM "Cut" ACTION hwgqt_MsgInfo("cut") BITMAP "images/cut.png" OF oToolBar
      TOOLBARITEM "Copy" ACTION hwgqt_MsgInfo("copy") BITMAP "images/copy.png" OF oToolBar
      TOOLBARITEM "Paste" ACTION hwgqt_MsgInfo("paste") BITMAP "images/paste.png" OF oToolBar
   END TOOLBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION ChildWindow1 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 1" SIZE 640,480 OPACITY .5 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL

STATIC FUNCTION ChildWindow2 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 2" SIZE 640,480 OPACITY .5 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL

STATIC FUNCTION ChildWindow3 (oParent)

   LOCAL oWindow

   INIT WINDOW oWindow CHILD TITLE "Janela 3" SIZE 640,480 OPACITY .5 OF oParent

   ACTIVATE WINDOW oWindow

   RELEASE WINDOW oWindow

RETURN NIL
