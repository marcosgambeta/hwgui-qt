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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oMonthCalendar

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste dos métodos Hide e Show" SIZE 640,480

   @ 20,20 BUTTON oButton1 ;
           CAPTION "Hide" ;
           SIZE 150,30 ;
           ON CLICK {||oMonthCalendar:hide()} ;
           OF oDialog

   @ 220,20 BUTTON oButton2 ;
            CAPTION "Show" ;
            SIZE 150,30 ;
            ON CLICK {||oMonthCalendar:show()} ;
            OF oDialog

   @ (640-350)/2,200 MONTHCALENDAR oMonthCalendar SIZE 350,250 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
