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
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oMonthCalendar

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" SIZE 640,480

   @ 20,20 BUTTON oButton1 ;
           CAPTION "Mover para direita" ;
           SIZE 150,30 ;
           ON CLICK {||oMonthCalendar:move(640-20-350,200,350,240)} ;
           OF oDialog

   @ 220,20 BUTTON oButton2 ;
            CAPTION "Mover para esquerda" ;
            SIZE 150,30 ;
            ON CLICK {||oMonthCalendar:move(20,200,350,240)} ;
            OF oDialog

   @ 20,200 MONTHCALENDAR oMonthCalendar SIZE 350,240 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
