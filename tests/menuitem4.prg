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

   oApp := QApplication():new()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU TITLE "Menu A"
         MENUITEM "Opção A1" ACTION hwg_MsgInfo("A1")
         MENUITEM "Opção A2" ACTION hwg_MsgInfo("A2")
         MENUITEM "Opção A3" ACTION hwg_MsgInfo("A3")
         BEGIN MENU TITLE "Menu A4"
            MENUITEM "Opção A41" ACTION hwg_MsgInfo("A41")
            MENUITEM "Opção A42" ACTION hwg_MsgInfo("A42")
            MENUITEM "Opção A43" ACTION hwg_MsgInfo("A43")
            BEGIN MENU TITLE "Menu A41"
               MENUITEM "Opção A411" ACTION hwg_MsgInfo("A411")
               MENUITEM "Opção A412" ACTION hwg_MsgInfo("A412")
               MENUITEM "Opção A413" ACTION hwg_MsgInfo("A413")
            END MENU
         END MENU
         BEGIN MENU TITLE "Menu A5"
            MENUITEM "Opção A51" ACTION hwg_MsgInfo("A51")
            MENUITEM "Opção A52" ACTION hwg_MsgInfo("A52")
            MENUITEM "Opção A53" ACTION hwg_MsgInfo("A53")
         END MENU
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN
