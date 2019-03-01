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
   LOCAL oMainWindow
   LOCAL oButton

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 MAIN

   @ 20,20 BUTTON oButton CAPTION "Diálogo" SIZE 120,40 ON CLICK {||dialog(oMainWindow)} OF oMainWindow

   ACTIVATE WINDOW oMainWindow MAXIMIZED

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION dialog (oParent)

   LOCAL oDialog
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oMonthCalendar

   INIT DIALOG oDialog OF oParent TITLE "Janela de diálogo" SIZE 800,600

   @ 20,20 BUTTON oButton1 ;
           CAPTION "Aumentar" ;
           SIZE 150,30 ;
           ON CLICK {||oMonthCalendar:nWidth := 350*1.5,oMonthCalendar:nHeight := 250*1.5} ;
           OF oDialog

   @ 220,20 BUTTON oButton2 ;
            CAPTION "Restaurar" ;
            SIZE 150,30 ;
            ON CLICK {||oMonthCalendar:nWidth := 350,oMonthCalendar:nHeight := 250} ;
            OF oDialog

   @ (640-350)/2,200 MONTHCALENDAR oMonthCalendar SIZE 350,250 OF oDialog

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

RETURN NIL
