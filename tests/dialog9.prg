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
   LOCAL oMenu

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar
      BEGIN MENU oMenu TITLE "&Opções"
         MENUITEM "Dialog (&Modal)" ACTION dialogmodal(oMainWindow)
         MENUITEM "Dialog (&NoModal)" ACTION dialognomodal(oMainWindow)
         MENUITEM "&Sair" ACTION oMainWindow:close()
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION dialogmodal (oParent)

   LOCAL oDialog
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT DIALOG oDialog TITLE "Janela de diálogo MODAL" AT 300,300 SIZE 320,240 ;
      ON MAXIMIZE qout("maximized") ;
      ON MINIMIZE qout("minimized") ;
      ON RESTORE qout("restored") ;
      OF oParent

   // trick to allow maximize, minimize and restore (experimental)
   oDialog:oQt:setWindowFlags(Qt_Window)

   @ 10,10 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão Ok clicado")}

   @ 10,130 BUTTON oButtonCancel CAPTION "Cancel" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão Cancel clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

RETURN NIL

STATIC FUNCTION dialognomodal (oParent)

   LOCAL oDialog
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT DIALOG oDialog TITLE "Janela de diálogo NOMODAL" AT 300,300 SIZE 320,240 ;
      ON MAXIMIZE qout("maximized") ;
      ON MINIMIZE qout("minimized") ;
      ON RESTORE qout("restored") ;
      OF oParent

   // trick to allow maximize, minimize and restore (experimental)
   oDialog:oQt:setWindowFlags(Qt_Window)

   @ 10,10 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão Ok clicado")}

   @ 10,130 BUTTON oButtonCancel CAPTION "Cancel" SIZE 120,30 ;
      ON CLICK {||hwgqt_MsgInfo("botão Cancel clicado")}

   ACTIVATE DIALOG oDialog NOMODAL

   RELEASE DIALOG oDialog

RETURN NIL
