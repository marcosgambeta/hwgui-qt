/*

  HWGUIQt Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

/*
  Teste de herança
*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oButton
   LOCAL nCount := 0

   INIT APPLICATION oApp

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 1024,768 MAIN

   @ 20,20 BUTTON oButton ;
      CAPTION "Abrir Janela" ;
      TOOLTIP "Clique aqui para abrir uma nova janela de diálogo" ;
      ON CLICK {||++nCount,newWindow(oMainWindow,nCount)} ;
      CLASS MyButton ;
      OF oMainWindow

   ACTIVATE WINDOW oMainWindow MAXIMIZED

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

RETURN

STATIC FUNCTION newWindow (oParent,nCount)

   LOCAL oDialog
   LOCAL nWinNum := nCount

   INIT DIALOG oDialog ;
      TITLE "Janela # "+alltrim(str(nWinNum)) ;
      CLASS MyDialog ;
      OF oParent

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

RETURN NIL

#include "hbclass.ch"

/*
  Classe MyDialog (derivada da classe HWGDialog)
*/

CLASS MyDialog INHERIT HWGDialog

   DATA oButton1
   DATA oButton2
   DATA oButton3
   DATA oMonthCalendar

   METHOD new
   METHOD createControls

ENDCLASS

METHOD new (...) CLASS MyDialog

  ::super:new(...)

  ::nWidth := 800
  ::nheight := 600
  ::cStyleSheet := "background-color: gray;"

  ::createControls()

RETURN self

METHOD createControls () CLASS MyDialog

   @ 20,20 BUTTON ::oButton1 ;
           CAPTION "Aumentar" ;
           TOOLTIP "Clique aqui para aumentar o calendário" ;
           ON CLICK {||::oMonthCalendar:nWidth := 350*1.5,::oMonthCalendar:nHeight := 250*1.5} ;
           CLASS MyButton ;
           OF self

   @ 220,20 BUTTON ::oButton2 ;
            CAPTION "Restaurar" ;
            TOOLTIP "Clique aqui para restaurar o calendário" ;
            ON CLICK {||::oMonthCalendar:nWidth := 350,::oMonthCalendar:nHeight := 250} ;
            CLASS MyButton ;
            OF self

   @ 420,20 BUTTON ::oButton3 ;
            CAPTION "Sair" ;
            TOOLTIP "Clique aqui para fechar a janela" ;
            ON CLICK {||::accept()} ;
            CLASS MyButton ;
            OF self

   @ (::nWidth-350)/2,200 MONTHCALENDAR ::oMonthCalendar SIZE 350,250 CLASS MyMonthCalendar OF self

RETURN NIL

/*
  Classe MyButton (derivada da classe HWGButton)
*/

CLASS MyButton INHERIT HWGButton

   METHOD new

ENDCLASS

METHOD new (...) CLASS MyButton

  ::super:new(...)

  ::nWidth := 150
  ::nHeight := 40
  ::cStyleSheet := "background-color: darkgray;"

RETURN self

/*
  Classe MyMonthCalendar (derivada da classe HWGMonthCalendar)
*/

CLASS MyMonthCalendar INHERIT HWGMonthCalendar

   METHOD new

ENDCLASS

METHOD new (...) CLASS MyMonthCalendar

  ::super:new(...)

  ::cStyleSheet := "background-color: lightgreen;"

RETURN self
