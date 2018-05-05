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
   LOCAL oDialog
   LOCAL oMainTab
   LOCAL oTab1
   LOCAL oSay1A
   LOCAL oSay1B
   LOCAL oSay1C
   LOCAL oSay1D
   LOCAL oSay1E
   LOCAL oTab1A
   LOCAL oSay1A1
   LOCAL oSay1B1
   LOCAL oSay1C1
   LOCAL oSay1D1
   LOCAL oSay1E1
   LOCAL oTab2
   LOCAL oSay2A
   LOCAL oSay2B
   LOCAL oSay2C
   LOCAL oSay2D
   LOCAL oSay2E
   LOCAL oTab3
   LOCAL oSay3A
   LOCAL oSay3B
   LOCAL oSay3C
   LOCAL oSay3D
   LOCAL oSay3E
   LOCAL oTab4
   LOCAL oSay4A
   LOCAL oSay4B
   LOCAL oSay4C
   LOCAL oSay4D
   LOCAL oSay4E
   LOCAL oTab5
   LOCAL oSay5A
   LOCAL oSay5B
   LOCAL oSay5C
   LOCAL oSay5D
   LOCAL oSay5E
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oButton4
   LOCAL oButton5
   LOCAL oButton6

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGTab" SIZE 640,480+20

   @ 10,10 TAB oMainTab ITEMS {} SIZE 640-20,480-20 OF oDialog

   BEGIN PAGE "Página 1" OF oMainTab
      @ 10,10 TAB oTab1 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "Página 1A" OF oTab1
         @ 10,10 TAB oTab1A ITEMS {} SIZE 640-20-20-20,480-20-20-20-20-20
         BEGIN PAGE "Página 1A1" OF oTab1A
            @ 10,10 SAY oSay1A1 CAPTION "oSay1A1 da página 1A1"
         END PAGE OF oTab1A
         BEGIN PAGE "Página 1A2" OF oTab1A
            @ 10,10 SAY oSay1B1 CAPTION "oSay1B1 da página 1A2"
         END PAGE OF oTab1A
         BEGIN PAGE "Página 1A3" OF oTab1A
            @ 10,10 SAY oSay1C1 CAPTION "oSay1C1 da página 1A3"
         END PAGE OF oTab1A
         BEGIN PAGE "Página 1A4" OF oTab1A
            @ 10,10 SAY oSay1D1 CAPTION "oSay1D1 da página 1A4"
         END PAGE OF oTab1A
         BEGIN PAGE "Página 1A5" OF oTab1A
            @ 10,10 SAY oSay1E1 CAPTION "oSay1E1 da página 1A5"
         END PAGE OF oTab1A
      END PAGE OF oTab1
      BEGIN PAGE "Página 1B" OF oTab1
         @ 10,10 SAY oSay1B CAPTION "oSay1B da página 1B"
      END PAGE OF oTab1
      BEGIN PAGE "Página 1C" OF oTab1
         @ 10,10 SAY oSay1C CAPTION "oSay1C da página 1C"
      END PAGE OF oTab1
      BEGIN PAGE "Página 1D" OF oTab1
         @ 10,10 SAY oSay1D CAPTION "oSay1D da página 1D"
      END PAGE OF oTab1
      BEGIN PAGE "Página 1E" OF oTab1
         @ 10,10 SAY oSay1E CAPTION "oSay1E da página 1E"
      END PAGE OF oTab1
   END PAGE OF oMainTab

   BEGIN PAGE "Página 2" OF oMainTab
      @ 10,10 TAB oTab2 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "Página 2A" OF oTab2
         @ 10,10 SAY oSay2A CAPTION "oSay2A da página 2A"
      END PAGE OF oTab2
      BEGIN PAGE "Página 2B" OF oTab2
         @ 10,10 SAY oSay2B CAPTION "oSay2B da página 2B"
      END PAGE OF oTab2
      BEGIN PAGE "Página 2C" OF oTab2
         @ 10,10 SAY oSay2C CAPTION "oSay2C da página 2C"
      END PAGE OF oTab2
      BEGIN PAGE "Página 2D" OF oTab2
         @ 10,10 SAY oSay2D CAPTION "oSay2D da página 2D"
      END PAGE OF oTab2
      BEGIN PAGE "Página 2E" OF oTab2
         @ 10,10 SAY oSay2E CAPTION "oSay2E da página 2E"
      END PAGE OF oTab2
   END PAGE OF oMainTab

   BEGIN PAGE "Página 3" OF oMainTab
      @ 10,10 TAB oTab3 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "Página 3A" OF oTab3
         @ 10,10 SAY oSay3A CAPTION "oSay3A da página 3A"
      END PAGE OF oTab3
      BEGIN PAGE "Página 3B" OF oTab3
         @ 10,10 SAY oSay3B CAPTION "oSay3B da página 3B"
      END PAGE OF oTab3
      BEGIN PAGE "Página 3C" OF oTab3
         @ 10,10 SAY oSay3C CAPTION "oSay3C da página 3C"
      END PAGE OF oTab3
      BEGIN PAGE "Página 3D" OF oTab3
         @ 10,10 SAY oSay3D CAPTION "oSay3D da página 3D"
      END PAGE OF oTab3
      BEGIN PAGE "Página 3E" OF oTab3
         @ 10,10 SAY oSay3E CAPTION "oSay3E da página 3E"
      END PAGE OF oTab3
   END PAGE OF oMainTab

   BEGIN PAGE "Página 4" OF oMainTab
      @ 10,10 TAB oTab4 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "Página 4A" OF oTab4
         @ 10,10 SAY oSay4A CAPTION "oSay4A da página 4A"
      END PAGE OF oTab4
      BEGIN PAGE "Página 4B" OF oTab4
         @ 10,10 SAY oSay4B CAPTION "oSay4B da página 4B"
      END PAGE OF oTab4
      BEGIN PAGE "Página 4C" OF oTab4
         @ 10,10 SAY oSay4C CAPTION "oSay4C da página 4C"
      END PAGE OF oTab4
      BEGIN PAGE "Página 4D" OF oTab4
         @ 10,10 SAY oSay4D CAPTION "oSay4D da página 4D"
      END PAGE OF oTab4
      BEGIN PAGE "Página 4E" OF oTab4
         @ 10,10 SAY oSay4E CAPTION "oSay4E da página 4E"
      END PAGE OF oTab4
   END PAGE OF oMainTab

   BEGIN PAGE "Página 5" OF oMainTab
      @ 10,10 TAB oTab5 ITEMS {} SIZE 640-20-20,480-20-20-20-20
      BEGIN PAGE "Página 5A" OF oTab5
         @ 10,10 SAY oSay5A CAPTION "oSay5A da página 5A"
      END PAGE OF oTab5
      BEGIN PAGE "Página 5B" OF oTab5
         @ 10,10 SAY oSay5B CAPTION "oSay5B da página 5B"
      END PAGE OF oTab5
      BEGIN PAGE "Página 5C" OF oTab5
         @ 10,10 SAY oSay5C CAPTION "oSay5C da página 5C"
      END PAGE OF oTab5
      BEGIN PAGE "Página 5D" OF oTab5
         @ 10,10 SAY oSay5D CAPTION "oSay5D da página 5D"
      END PAGE OF oTab5
      BEGIN PAGE "Página 5E" OF oTab5
         @ 10,10 SAY oSay5E CAPTION "oSay5E da página 5E"
      END PAGE OF oTab5
   END PAGE OF oMainTab

   @ 010,500-30 BUTTON oButton1 CAPTION "Botão1" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 1")} OF oDialog
   @ 110,500-30 BUTTON oButton2 CAPTION "Botão2" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 2")} OF oDialog
   @ 210,500-30 BUTTON oButton3 CAPTION "Botão3" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 3")} OF oDialog
   @ 310,500-30 BUTTON oButton4 CAPTION "Botão4" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 4")} OF oDialog
   @ 410,500-30 BUTTON oButton5 CAPTION "Botão5" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 5")} OF oDialog
   @ 510,500-30 BUTTON oButton6 CAPTION "Botão6" SIZE 100,25 ON CLICK {||hwgqt_MsgInfo("botão 6")} OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
