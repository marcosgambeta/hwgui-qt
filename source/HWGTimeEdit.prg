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

CLASS HWGTimeEdit INHERIT HWGControl

   DATA bSetGet

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             cTime, xVar, bSetGet, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGTimeEdit

   IF valtype(oParent) == "O"
      ::oQt := QTimeEdit():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QTimeEdit():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QTimeEdit():new()
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

   IF valtype(cTime) == "C"
      ::oQt:setTime( QTime():fromString(cTime, "hh:mm:ss") )
   ENDIF

   IF valtype(xVar) == "C"
      ::oQt:setTime( QTime():fromString(xVar, "hh:mm:ss") )
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
      ::oQt:onTimeChanged( {|oSender,oTime|eval(::bSetGet,strzero(oTime:hour(),2)+":"+strzero(oTime:minute(),2)+":"+strzero(oTime:second(),2))} )
   ENDIF

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGTimeEdit

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL
