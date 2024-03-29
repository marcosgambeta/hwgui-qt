/*

  HWGUIQt Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/hwgui-qt

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

   @ 10,50 DATEPICKER oDatePicker2 INIT date() SIZE 80,30

   @ 10,90 DATEPICKER oDatePicker3 INIT date()+30 SIZE 80,30

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
