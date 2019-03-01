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
   LOCAL oDialog
   LOCAL oPB1
   LOCAL oPB2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGProgressBar" SIZE 320,320

   @ 10,10 PROGRESSBAR oPB1 SIZE 200,40 ;
      TOOLTIP "tooltip do oProgressBar1" ;
      WHATSTHIS "whatsthis do oProgressBar1"

   @ 10,110 PROGRESSBAR oPB2 SIZE 40,200 ;
      TOOLTIP "tooltip do oProgressBar2" ;
      WHATSTHIS "whatsthis do oProgressBar2" ;
      VERTICAL DISABLED

   // solucao temporaria para definicao do valor
   oPB1:oQt:setValue(25)
   oPB2:oQt:setValue(50)

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
