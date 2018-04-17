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

CLASS HWGDateEdit INHERIT HWGControl

   DATA bSetGet

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             dDate, xVar, bSetGet, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGDateEdit

   IF valtype(oParent) == "O"
      ::oQt := QDateEdit():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QDateEdit():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QDateEdit():new()
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

   IF valtype(dDate) == "D"
      ::oQt:setDate( QDate():new(year(dDate),month(dDate),day(dDate)) )
   ENDIF

   IF valtype(xVar) == "D"
      ::oQt:setDate( QDate():new(year(xVar),month(xVar),day(xVar)) )
   ENDIF

   ::bSetGet := bSetGet

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   IF valtype(::bSetGet) == "B"
      ::oQt:onDateChanged( {|oSender,oDate|eval(::bSetGet,stod(strzero(oDate:year(),4)+strzero(oDate:month(),2)+strzero(oDate:day(),2)))} )
   ENDIF   

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGDateEdit

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL
