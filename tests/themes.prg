/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

/*
  teste com QSS
*/

#include "hwguiqt.ch"

PROCEDURE Main ( cTheme )

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oMenuBar
   LOCAL oMenuA
   LOCAL oMenuB
   LOCAL oToolBar
   LOCAL oActionA1
   LOCAL oActionA2
   LOCAL oActionA3
   LOCAL oActionB1
   LOCAL oActionB2
   LOCAL oActionB3

   INIT APPLICATION oApp

   IF valtype(cTheme) == "C"
      IF file(cTheme)
         oApp:oQt:setStyleSheet( memoread( cTheme ) )
      ENDIF
   ENDIF

   // cria a janela principal
   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   // cria as ações que serão usadas nos menus e na barra de ferramentas
   PREPARE ACTION oActionA1 TEXT "Opção A1" ICON "images/new.png"   TOOLTIP "Executa a opção A1" ON TRIGGERED hwgqt_msginfo("A1") OF oMainWindow
   PREPARE ACTION oActionA2 TEXT "Opção A2" ICON "images/open.png"  TOOLTIP "Executa a opção A2" ON TRIGGERED hwgqt_msginfo("A2") OF oMainWindow
   PREPARE ACTION oActionA3 TEXT "Opção A3" ICON "images/save.png"  TOOLTIP "Executa a opção A3" ON TRIGGERED hwgqt_msginfo("A3") OF oMainWindow
   PREPARE ACTION oActionB1 TEXT "Opção B1" ICON "images/cut.png"   TOOLTIP "Executa a opção B1" ON TRIGGERED hwgqt_msginfo("B1") OF oMainWindow
   PREPARE ACTION oActionB2 TEXT "Opção B2" ICON "images/copy.png"  TOOLTIP "Executa a opção B2" ON TRIGGERED hwgqt_msginfo("B2") OF oMainWindow
   PREPARE ACTION oActionB3 TEXT "Opção B3" ICON "images/paste.png" TOOLTIP "Executa a opção B3" ON TRIGGERED hwgqt_msginfo("B3") OF oMainWindow

   // cria a barra de menus
   BEGIN MENUBAR oMenuBar OF oMainWindow
      // cria o primeiro menu
      BEGIN MENU oMenuA TITLE "Menu &A"
         MENUITEM USING ACTION oActionA1
         MENUITEM USING ACTION oActionA2
         MENUITEM USING ACTION oActionA3
      END MENU
      // cria o segundo menu
      BEGIN MENU oMenuB TITLE "Menu &B"
         MENUITEM USING ACTION oActionB1
         MENUITEM USING ACTION oActionB2
         MENUITEM USING ACTION oActionB3
      END MENU
   END MENUBAR

   // cria a barra de ferramentas
   BEGIN TOOLBAR oToolBar OF oMainWindow
      TOOLBARITEM USING ACTION oActionA1
      TOOLBARITEM USING ACTION oActionA2
      TOOLBARITEM USING ACTION oActionA3
      SEPARATOR OF oToolBar
      TOOLBARITEM USING ACTION oActionB1
      TOOLBARITEM USING ACTION oActionB2
      TOOLBARITEM USING ACTION oActionB3
   END TOOLBAR

   // ativa a janela
   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN
