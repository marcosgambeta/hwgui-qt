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
   LOCAL oMC

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HWGMonthCalendar" SIZE 320,320

   @ 10,10 MONTHCALENDAR oMC SIZE 280,280

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
