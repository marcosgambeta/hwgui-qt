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
   LOCAL oMC1
   LOCAL oMC2

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGMonthCalendar" SIZE 320,640

   @ 10,10 MONTHCALENDAR oMC1 SIZE 280,280

   @ 10,330 MONTHCALENDAR oMC2 SIZE 280,280 DISABLED

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
