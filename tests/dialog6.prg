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
   LOCAL oMenu

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   BEGIN MENUBAR oMenuBar
      BEGIN MENU oMenu TITLE "&Opções"
         MENUITEM "&Teste" ACTION dialog(oMainWindow)
         MENUITEM "&Sair" ACTION oMainWindow:close()
      END MENU
   END MENUBAR

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION dialog (oParent)

   LOCAL oDialog
   LOCAL oSay1
   LOCAL oSay2
   LOCAL oSay3
   LOCAL oEdit1
   LOCAL oEdit2
   LOCAL oEdit3
   LOCAL cEdit1 := ""
   LOCAL cEdit2 := ""
   LOCAl cEdit3 := ""
   LOCAL oButtonOk
   LOCAL oButtonCancel
   LOCAL cStyleSheet

   cStyleSheet := ""
   cStyleSheet += "QLineEdit { color: rgb(127,0,63); selection-color: white; border: 2px groove gray; border-radius: 10px; padding: 2px 4px;} "
   cStyleSheet += "QLineEdit:focus { color: rgb(127,0,63); background-color: yellow; selection-color: white; border: 2px groove gray; border-radius: 10px; padding: 2px 4px;} "
   cStyleSheet += "QPushButton { background-color: lightgray; border: 2px groove gray; border-radius: 10px; padding: 2px 4px;} "
   cStyleSheet += "QPushButton:focus { color: rgb(127,0,63); background-color: darkgray; outline: none; }"

   INIT DIALOG oDialog TITLE "Inclusão" SIZE 320,240 STYLESHEET cStyleSheet OF oParent

   @ 20,20 SAY oSay1 CAPTION "Código" SIZE 80,30
   @ 100,20 GET oEdit1 VAR cEdit1 SIZE 180,30

   @ 20,60 SAY oSay2 CAPTION "Nome" SIZE 80,30
   @ 100,60 GET oEdit2 VAR cEdit2 SIZE 180,30

   @ 20,100 SAY oSay3 CAPTION "Telefone" SIZE 80,30
   @ 100,100 GET oEdit3 VAR cEdit3 SIZE 180,30

   @ 10,160 BUTTON oButtonOk CAPTION "&Ok" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Ok' clicado")}

   @ 150,160 BUTTON oButtonCancel CAPTION "&Cancelar" SIZE 120,30 OF oDialog ;
      ON CLICK {||hwgqt_MsgInfo("botão 'Cancelar' clicado")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

RETURN NIL
