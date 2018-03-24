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

CLASS HWGUpDown INHERIT HWGControl

   METHOD new
   METHOD activate
   METHOD value
   METHOD setValue
   METHOD setRange

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             nValue, nMinimum, nMaximum, nStep, cPrefix, cSuffix, ;
             bOnInit, lDisabled ) CLASS HWGUpDown

   IF valtype(oParent) == "O"
      ::oQt := QSpinBox():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QSpinBox():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QSpinBox():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )
   ::configureTips( cToolTip, cStatusTip, cWhatsThis )
   ::configureStyleSheet( cStyleSheet )
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(nValue) == "N"
      ::oQt:setValue(nValue)
   ENDIF

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

   IF valtype(nStep) == "N"
      ::oQt:setSingleStep(nStep)
   ENDIF

   IF valtype(cPrefix) == "C"
      ::oQt:setPrefix(cPrefix)
   ENDIF

   IF valtype(cSuffix) == "C"
      ::oQt:setSuffix(cSuffix)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

//    ::configureEvents( bSize, bPaint, bGFocus, bLFocus )
//    ::connectEvents()

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGUpDown

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD value () CLASS HWGUpDown
RETURN ::oQt:value()

METHOD setValue (nValue) CLASS HWGUpDown

   IF valtype(nValue) == "N"
      ::oQt:setValue(nValue)
   ENDIF

RETURN NIL

METHOD SetRange (nMinimum,nMaximum) CLASS HWGUpDown

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

RETURN NIL
