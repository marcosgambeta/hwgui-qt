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
   LOCAL oMenuC

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Menu &A" OF oMenuBar
         MENUITEM "Opção A1" ACTION hwgqt_MsgInfo("A1") OF oMenuA
         MENUITEM "Opção A2" ACTION hwgqt_MsgInfo("A2") OF oMenuA
         MENUITEM "Opção A3" ACTION hwgqt_MsgInfo("A3") OF oMenuA
      END MENU
      BEGIN MENU oMenuB TITLE "Menu &B" OF oMenuBar
         MENUITEM "Opção B1" ACTION hwgqt_MsgInfo("B1") OF oMenuB
         MENUITEM "Opção B2" ACTION hwgqt_MsgInfo("B2") OF oMenuB
         MENUITEM "Opção B3" ACTION hwgqt_MsgInfo("B3") OF oMenuB
      END MENU
      BEGIN MENU oMenuC TITLE "Menu &C" OF oMenuBar
         MENUITEM "Opção C1" ACTION hwgqt_MsgInfo("C1") OF oMenuC
         MENUITEM "Opção C2" ACTION hwgqt_MsgInfo("C2") OF oMenuC
         MENUITEM "Opção C3" ACTION hwgqt_MsgInfo("C3") OF oMenuC
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
