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
   LOCAL oSay1
   LOCAL oSay2
   LOCAL oSay3
   LOCAL oUpDown1
   LOCAL oUpDown2
   LOCAL oUpDown3

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGUpDown" SIZE 320,240

   @ 10,10 SAY oSay1 CAPTION "Campo 1" SIZE 100,30 OF oDialog
   @ 110,10 UPDOWN oUpDown1 INIT 50 RANGE 1,100 OF oDialog

   @ 10,50 SAY oSay2 CAPTION "Campo 2" SIZE 100,30 OF oDialog
   @ 110,50 UPDOWN oUpDown2 INIT 0 RANGE 0,100 INCREMENT 2 OF oDialog

   @ 10,90 SAY oSay3 CAPTION "Campo 3" SIZE 100,30 OF oDialog
   @ 110,90 UPDOWN oUpDown3 INIT 0 RANGE 0,100 PREFIX "R$ " SUFFIX ",00" OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
