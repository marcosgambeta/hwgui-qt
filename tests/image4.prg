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
   LOCAL oImage

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGSayImage" SIZE 360,360

   @ 20,20 IMAGE oImage SHOW "images\BrazilStates\saopaulo.png" ;
      SIZE 150*2,92*2 ;
      TOOLTIP "objeto oImage - imagem PNG - scaled=.T." ;
      SCALED

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
