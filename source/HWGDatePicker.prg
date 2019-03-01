/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#include "hbclass.ch"

CLASS HWGDatePicker INHERIT HWGControl

   DATA bSetGet
   DATA oActionButton

   METHOD new
   METHOD activate
   METHOD showCalendar

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             dDate, xVar, bSetGet, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGDatePicker

   IF valtype(oParent) == "O"
      ::oQt := QLineEdit():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLineEdit():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QLineEdit():new()
      ENDIF
   ENDIF

   IF nId == NIL
      ::nId := ::newId()
   ELSE
      ::nId := nId
   ENDIF

   ::configureStyle( nStyle )
   ::configureGeometry( nX, nY, nWidth, nHeight )
   ::configureTips( cToolTip, cStatusTip, cWhatsThis )
   ::configureStyleSheet( cStyleSheet )
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   ::oActionButton := QPushButton():new("...",::oQt:parent())
   ::oActionButton:move(::oQt:x()+::oQt:width(),::oQt:y())
   ::oActionButton:resize(30,::oQt:height())
   ::oActionButton:setAutoDefault(.F.)
   ::oActionButton:onClicked({||::showcalendar()})
   ::oQt:setInputMask("00/00/0000")

   IF valtype(dDate) == "D"
      ::oQt:setText(transform(dDate,"99/99/9999"))
   ENDIF

   IF valtype(xVar) == "D"
      ::oQt:setText(transform(xVar,"99/99/9999"))
   ENDIF

   ::bSetGet := bSetGet

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   // TODO: enabled/disable deve agir nos dois objetos (::oQt e ::oActionButton)

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
         ::oActionButton:setEnabled(.F.)
      ENDIF
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   IF valtype(::bSetGet) == "B"
      ::oQt:onTextEdited( {|oSender,cText|eval(::bSetGet,ctod(cText))} )
      ::oQt:onTextChanged( {|oSender,cText|eval(::bSetGet,ctod(cText))} )
   ENDIF

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGDatePicker

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
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

   oCalendar:onActivated({|oSender,oDate|::oQt:setText(strzero(oDate:day(),2)+"/"+strzero(oDate:month(),2)+"/"+strzero(oDate:year(),4)),oDialog:done(0)})

   oCalendar:setFocus()

   oDialog:exec()

   oCalendar:onActivated()

   oDialog:delete()

   ::oQt:setFocus()

RETURN NIL
