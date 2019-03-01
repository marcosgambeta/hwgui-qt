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
   LOCAL cSS

   cSS := ""
   cSS += "QMainWindow {color: white; background-color: blue;} "
   cSS += "QPushButton {color: blue; background-color: white;} "
   cSS += "QDialog {color: white; background-color: lightgreen;} "

   INIT APPLICATION oApp

   ? "qtxhb_events_size=",qtxhb_events_size()
   ? "qtxhb_events_size_active=",qtxhb_events_size_active()
   ? "qtxhb_signals_size=",qtxhb_signals_size()
   ? "qtxhb_signals_size_active=",qtxhb_signals_size_active()

   INIT WINDOW oMainWindow TITLE "Janela principal" SIZE 800,600 STYLESHEET cSS MAIN

   @ 20,20 BUTTON oButton CAPTION "Diálogo" SIZE 150,30 ON CLICK {||dialogo(oMainWindow)}

   ACTIVATE WINDOW oMainWindow

   EXECUTE APPLICATION oApp

   RELEASE WINDOW oMainWindow

   RELEASE APPLICATION oApp

   ? "qtxhb_events_size=",qtxhb_events_size()
   ? "qtxhb_events_size_active=",qtxhb_events_size_active()
   ? "qtxhb_signals_size=",qtxhb_signals_size()
   ? "qtxhb_signals_size_active=",qtxhb_signals_size_active()

RETURN

STATIC FUNCTION dialogo (oParent)

   LOCAL oDialog
   LOCAL oSay1
   LOCAL cEdit1 := ""
   LOCAL oSay2
   LOCAL cEdit2 := ""
   LOCAL oSay3
   LOCAL cEdit3 := ""
   LOCAL oSay4
   LOCAL oComboBox
   LOCAL oCheckBox1
   LOCAL oCheckBox2
   LOCAL oGroup
   LOCAL oRadioButton1
   LOCAL oRadioButton2
   LOCAL oRadioButton3
   LOCAL oMonthCalendar1
   LOCAL oMonthCalendar2
   LOCAL oButtonOk
   LOCAL oButtonCancel

   ? "qtxhb_events_size=",qtxhb_events_size()
   ? "qtxhb_events_size_active=",qtxhb_events_size_active()
   ? "qtxhb_signals_size=",qtxhb_signals_size()
   ? "qtxhb_signals_size_active=",qtxhb_signals_size_active()

   INIT DIALOG oDialog OF oParent TITLE "Janela de diálogo" SIZE 640,480

   @ 10,10 SAY oSay1 CAPTION "Campo 1" TOOLTIP "oSay1"
   @ 110,10 GET cEdit1 TOOLTIP "oEdit1" WHATSTHIS "local para digitar o campo 1"

   @ 10,40 SAY oSay2 CAPTION "Campo 2" TOOLTIP "oSay2"
   @ 110,40 GET cEdit2 TOOLTIP "oEdit2" WHATSTHIS "local para digitar o campo 2"

   @ 10,70 SAY oSay3 CAPTION "Campo 3" TOOLTIP "oSay3"
   @ 110,70 GET cEdit3 TOOLTIP "oEdit3" WHATSTHIS "local para digitar o campo 3"

   @ 10,100 SAY oSay4 CAPTION "Campo 4" TOOLTIP "oSay4"
   @ 110,100 COMBOBOX oComboBox ITEMS {"Item 1","Item 2","Item 3","Item 4"} TOOLTIP "oComboBox" WHATSTHIS "local para escolher um item"

   @ 10,130 CHECKBOX oCheckBox1 CAPTION "Campo 5" TOOLTIP "oCheckBox1"
   @ 10,160 CHECKBOX oCheckBox2 CAPTION "Campo 6" INIT .t. TOOLTIP "oCheckBox2"

   @ 10,190 GROUPBOX oGroup CAPTION " group " SIZE 170,150

   @ 20,20 RADIOBUTTON oRadioButton1 CAPTION "Campo 7" TOOLTIP "oRadioButton1" STATUSTIP "oRadioButton1" CHECKED OF oGroup
   @ 20,50 RADIOBUTTON oRadioButton2 CAPTION "Campo 9" TOOLTIP "oRadioButton2" STATUSTIP "oRadioButton2" OF oGroup
   @ 20,80 RADIOBUTTON oRadioButton3 CAPTION "Campo 10" TOOLTIP "oRadioButton3" STATUSTIP "oRadioButton3" OF oGroup

   @ 320,10 MONTHCALENDAR oMonthCalendar1 TOOLTIP "oMonthCalendar1"
   @ 320,210 MONTHCALENDAR oMonthCalendar2 INIT (date()-365) TOOLTIP "oMonthCalendar2"

   @ 10,400 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      TOOLTIP "Clique aqui para confirmar" ;
      WHATSTHIS "botão para confirmar" ;
      ON CLICK oDialog:accept()

   @ 140,400 BUTTON oButtonCancel CAPTION "Cancel" SIZE 120,30 ;
      TOOLTIP "Clique aqui para cancelar" ;
      WHATSTHIS "botão para cancelar" ;
      ON CLICK oDialog:reject()

   oDialog:oQt:onDestroyed({||qout("dialog destroyed")})

   oDialog:listControls()

   ACTIVATE DIALOG oDialog

   IF oDialog:oQt:result() == 1
      hwgqt_MsgInfo("Ok", "Resultado")
   ENDIF

   IF oDialog:oQt:result() == 0
      hwgqt_MsgInfo("Cancel", "Resultado")
   ENDIF

   RELEASE DIALOG oDialog // oDialog:delete()

   ? "qtxhb_events_size=",qtxhb_events_size()
   ? "qtxhb_events_size_active=",qtxhb_events_size_active()
   ? "qtxhb_signals_size=",qtxhb_signals_size()
   ? "qtxhb_signals_size_active=",qtxhb_signals_size_active()

RETURN NIL
