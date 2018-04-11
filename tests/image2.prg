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
   LOCAL oImage1
   LOCAL oImage2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGSayImage" SIZE 360,240

   @ 20,20 IMAGE oImage1 SHOW "images\BrazilStates\saopaulo.png" ;
      SIZE 150,92 ;
      TOOLTIP "tooltip do objeto oImage1" ;
      OF oDialog

   @ 190,20 IMAGE oImage2 SHOW "images\BrazilStates\minasgerais.png" ;
      SIZE 150,92 ;
      TOOLTIP "tooltip do objeto oImage2" ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
