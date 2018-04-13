/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

/*
  Teste da classe HWGAction
*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuFiles
   LOCAL oMenuEdit
   LOCAL oToolBar
   LOCAL oActionNew
   LOCAL oActionOpen
   LOCAL oActionSave
   LOCAL oActionCut
   LOCAL oActionCopy
   LOCAL oActionPaste

   INIT APPLICATION oApp

   // cria a janela principal
   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   // cria as ações que serão usadas nos menus e na barra de ferramentas
   PREPARE ACTION oActionNew   TEXT "New"   ICON "images/new.png"   SHORTCUT "Ctrl+N" TOOLTIP "Executa a opção NEW"   ON TRIGGERED hwgqt_msginfo("New")   OF oMainWindow
   PREPARE ACTION oActionOpen  TEXT "Open"  ICON "images/open.png"  SHORTCUT "Ctrl+O" TOOLTIP "Executa a opção OPEN"  ON TRIGGERED hwgqt_msginfo("Open")  OF oMainWindow
   PREPARE ACTION oActionSave  TEXT "Save"  ICON "images/save.png"  SHORTCUT "Ctrl+S" TOOLTIP "Executa a opção SAVE"  ON TRIGGERED hwgqt_msginfo("Save")  OF oMainWindow
   PREPARE ACTION oActionCut   TEXT "Cut"   ICON "images/cut.png"   SHORTCUT "Ctrl+X" TOOLTIP "Executa a opção CUT"   ON TRIGGERED hwgqt_msginfo("Cut")   OF oMainWindow
   PREPARE ACTION oActionCopy  TEXT "Copy"  ICON "images/copy.png"  SHORTCUT "Ctrl+C" TOOLTIP "Executa a opção COPY"  ON TRIGGERED hwgqt_msginfo("Copy")  OF oMainWindow
   PREPARE ACTION oActionPaste TEXT "Paste" ICON "images/paste.png" SHORTCUT "Ctrl+V" TOOLTIP "Executa a opção PASTE" ON TRIGGERED hwgqt_msginfo("Paste") OF oMainWindow

   // cria a barra de menus
   BEGIN MENUBAR oMenuBar OF oMainWindow
      // cria o primeiro menu
      BEGIN MENU oMenuFiles TITLE "&Arquivos"
         MENUITEM USING ACTION oActionNew
         MENUITEM USING ACTION oActionOpen
         MENUITEM USING ACTION oActionSave
      END MENU
      // cria o segundo menu
      BEGIN MENU oMenuEdit TITLE "&Edit"
         MENUITEM USING ACTION oActionCut
         MENUITEM USING ACTION oActionCopy
         MENUITEM USING ACTION oActionPaste
      END MENU
   END MENUBAR

   // cria a barra de ferramentas
   BEGIN TOOLBAR oToolBar OF oMainWindow
      TOOLBARITEM USING ACTION oActionNew
      TOOLBARITEM USING ACTION oActionOpen
      TOOLBARITEM USING ACTION oActionSave
      SEPARATOR OF oToolBar
      TOOLBARITEM USING ACTION oActionCut
      TOOLBARITEM USING ACTION oActionCopy
      TOOLBARITEM USING ACTION oActionPaste
   END TOOLBAR

   // ativa a janela
   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
