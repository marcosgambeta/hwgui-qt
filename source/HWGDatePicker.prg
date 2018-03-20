/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGDatePicker INHERIT HWGControl

   DATA oActionButton

   METHOD new
   METHOD activate
   METHOD showCalendar

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             dDate, ;
             bOnInit, lDisabled ) CLASS HWGDatePicker

   LOCAL oDate

   IF valtype(oParent) == "O"
      ::oQt := QLineEdit():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLineEdit():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QLineEdit():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip, cStatusTip, cWhatsThis )

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   ::oActionButton := QPushButton():new("...",::oQt:parent()):move(::oQt:x()+::oQt:width(),::oQt:y()):resize(30,::oQt:height())
   ::oActionButton:onClicked({||::showcalendar()})
   ::oQt:setInputMask("00/00/0000")

   IF valtype(dDate) == "D"
      ::oQt:setText(transform(dDate,"99/99/9999"))
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   // TODO: enabled/disable deve agir nos dois objetos (::oQt e ::oActionButton)

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
         ::oActionButton:setEnabled(.F.)
      ENDIF
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGDatePicker

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL

METHOD showCalendar () CLASS HWGDatePicker

   LOCAL oDialog
   LOCAL oCalendar
   LOCAL oPos
   LOCAL dDate

   dDate := ctod(::oQt:text())

   oPos := ::oQt:mapToGlobal(QPoint():new(0,0))

   oPos:setY( oPos:y() + ::oQt:height() )

   oDialog := QDialog():new(::oQt:parent(),Qt_Popup):resize(320,240):move(oPos)

   oCalendar := QCalendarWidget():new(oDialog):move(0,0):resize(320,240)

   IF !empty(dDate)
      oCalendar:setSelectedDate(QDate():new(year(dDate),month(dDate),day(dDate)))
   ENDIF

   oCalendar:onActivated({|pObject,pDate|oDate:=QDate():newFrom(pDate),::oQt:setText(strzero(oDate:day(),2)+"/"+strzero(oDate:month(),2)+"/"+strzero(oDate:year(),4)),oDialog:done(0)})

   oCalendar:setFocus()

   oDialog:exec()

   oCalendar:onActivated()

   oDialog:delete()

   ::oQt:setFocus()

RETURN NIL
