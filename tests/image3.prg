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
   LOCAL oImage1
   LOCAL oImage2
   LOCAL oImage3
   LOCAL oImage4

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGSayImage" SIZE 360,360

   @ 20,20 IMAGE oImage1 SHOW "images\BrazilStates\saopaulo.png" ;
      SIZE 150,92 ;
      TOOLTIP "objeto oImage1 - imagem PNG" ;
      OF oDialog

   @ 190,20 IMAGE oImage2 SHOW "images\BrazilStates\saopaulo.jpg" ;
      SIZE 150,92 ;
      TOOLTIP "objeto oImage2 - imagem JPG" ;
      OF oDialog

   @ 20,190 IMAGE oImage3 SHOW "images\BrazilStates\saopaulo.gif" ;
      SIZE 150,92 ;
      TOOLTIP "objeto oImage3 - imagem GIF" ;
      OF oDialog

   @ 190,190 IMAGE oImage4 SHOW "images\BrazilStates\saopaulo.bmp" ;
      SIZE 150,92 ;
      TOOLTIP "objeto oImage4 - imagem BMP" ;
      OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
