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
   LOCAL oDatePicker1
   LOCAL oDatePicker2
   LOCAL oDatePicker3

   SET DATE TO BRITISH
   SET CENTURY ON

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGDatePicker" SIZE 640,480

   @ 10,10 DATEPICKER oDatePicker1 INIT date()-30 SIZE 80,30

   @ 10,50 DATEPICKER oDatePicker2 INIT date() SIZE 80,30 DISABLED

   @ 10,90 DATEPICKER oDatePicker3 INIT date()+30 SIZE 80,30

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
