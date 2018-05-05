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
   LOCAL oMenuA4
   LOCAL oMenuA41
   LOCAL oMenuA5

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar OF oMainWindow
      BEGIN MENU oMenuA TITLE "Menu A" OF oMenuBar
         MENUITEM "Opção A1" ACTION hwgqt_MsgInfo("A1") OF oMenuA
         MENUITEM "Opção A2" ACTION hwgqt_MsgInfo("A2") OF oMenuA
         MENUITEM "Opção A3" ACTION hwgqt_MsgInfo("A3") OF oMenuA
         BEGIN MENU oMenuA4 TITLE "Menu A4" OF oMenuA
            MENUITEM "Opção A41" ACTION hwgqt_MsgInfo("A41") OF oMenuA4
            MENUITEM "Opção A42" ACTION hwgqt_MsgInfo("A42") OF oMenuA4
            MENUITEM "Opção A43" ACTION hwgqt_MsgInfo("A43") OF oMenuA4
            BEGIN MENU oMenuA41 TITLE "Menu A41" OF oMenuA4
               MENUITEM "Opção A411" ACTION hwgqt_MsgInfo("A411") OF oMenuA41
               MENUITEM "Opção A412" ACTION hwgqt_MsgInfo("A412") OF oMenuA41
               MENUITEM "Opção A413" ACTION hwgqt_MsgInfo("A413") OF oMenuA41
            END MENU
         END MENU
         BEGIN MENU oMenuA5 TITLE "Menu A5" OF oMenuA
            MENUITEM "Opção A51" ACTION hwgqt_MsgInfo("A51") OF oMenuA5
            MENUITEM "Opção A52" ACTION hwgqt_MsgInfo("A52") OF oMenuA5
            MENUITEM "Opção A53" ACTION hwgqt_MsgInfo("A53") OF oMenuA5
         END MENU
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
