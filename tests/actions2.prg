/*

  HWGUIQt Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

*/

/*
  Teste das classes HWGToolBar e HWGToolBarItem usando a��es
*/

#include "hwguiqt.ch"

PROCEDURE Main ()

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

   // O arquivo actions2_resources.qrc � um arquivo XML.
   // Para gerar o arquivo actions2.rcc, use o comando abaixo:
   // rcc --binary actions2_resources.qrc --output actions2.rcc

   // Carrega o arquivo actions2.rcc, permitindo o uso de seus recursos na aplica��o.
   // Para usar as imagens do arquivo de recursos, use o padr�o abaixo:
   // ":images/new.png" (note o sinal de dois pontos no in�cio da string)

   QResource():registerResource("actions2.rcc")

   // cria a janela principal
   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   // cria as a��es que ser�o usadas nos menus e na barra de ferramentas
   PREPARE ACTION oActionA1 TEXT "Op��o A1" ICON ":images/new.png"   TOOLTIP "Executa a op��o A1" ON TRIGGERED hwgqt_msginfo("A1") OF oMainWindow
   PREPARE ACTION oActionA2 TEXT "Op��o A2" ICON ":images/open.png"  TOOLTIP "Executa a op��o A2" ON TRIGGERED hwgqt_msginfo("A2") OF oMainWindow
   PREPARE ACTION oActionA3 TEXT "Op��o A3" ICON ":images/save.png"  TOOLTIP "Executa a op��o A3" ON TRIGGERED hwgqt_msginfo("A3") OF oMainWindow
   PREPARE ACTION oActionB1 TEXT "Op��o B1" ICON ":images/cut.png"   TOOLTIP "Executa a op��o B1" ON TRIGGERED hwgqt_msginfo("B1") OF oMainWindow
   PREPARE ACTION oActionB2 TEXT "Op��o B2" ICON ":images/copy.png"  TOOLTIP "Executa a op��o B2" ON TRIGGERED hwgqt_msginfo("B2") OF oMainWindow
   PREPARE ACTION oActionB3 TEXT "Op��o B3" ICON ":images/paste.png" TOOLTIP "Executa a op��o B3" ON TRIGGERED hwgqt_msginfo("B3") OF oMainWindow

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
