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

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU TITLE "Menu A"
         MENUITEM "Opção A1" ACTION hwgqt_MsgInfo("A1")
         MENUITEM "Opção A2" ACTION hwgqt_MsgInfo("A2") DISABLED
         MENUITEM "Opção A3" ACTION hwgqt_MsgInfo("A3")
         BEGIN MENU TITLE "Menu A4"
            MENUITEM "Opção A41" ACTION hwgqt_MsgInfo("A41")
            MENUITEM "Opção A42" ACTION hwgqt_MsgInfo("A42") DISABLED
            MENUITEM "Opção A43" ACTION hwgqt_MsgInfo("A43")
            BEGIN MENU TITLE "Menu A41"
               MENUITEM "Opção A411" ACTION hwgqt_MsgInfo("A411")
               MENUITEM "Opção A412" ACTION hwgqt_MsgInfo("A412") DISABLED
               MENUITEM "Opção A413" ACTION hwgqt_MsgInfo("A413")
            END MENU
         END MENU
         BEGIN MENU TITLE "Menu A5"
            MENUITEM "Opção A51" ACTION hwgqt_MsgInfo("A51")
            MENUITEM "Opção A52" ACTION hwgqt_MsgInfo("A52") DISABLED
            MENUITEM "Opção A53" ACTION hwgqt_MsgInfo("A53")
         END MENU
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
