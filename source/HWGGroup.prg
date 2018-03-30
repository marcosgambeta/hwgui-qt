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

CLASS HWGGroup INHERIT HWGControl

   ACCESS cTitle INLINE ::oQt:title()
   ASSIGN cTitle(cValue) INLINE ::oQt:setTitle(cValue)

   ACCESS lCheckable INLINE ::oQt:isCheckable()
   ASSIGN lCheckable(lValue) INLINE ::oQt:setCheckable(lValue)

   ACCESS lChecked INLINE ::oQt:isChecked()
   ASSIGN lChecked(lValue) INLINE ::oQt:setChecked(lValue)

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, cTitle, ;
             bInit, bSize, bPaint, lCheckable, lNoChecked, lDisabled, lInvisible ) CLASS HWGGroup

   IF valtype(oParent) == "O"
      ::oQt := QGroupBox():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QGroupBox():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QGroupBox():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )
   ::configureTips( cToolTip, cStatusTip, cWhatsThis )
   ::configureStyleSheet( cStyleSheet )
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(cTitle) == "C"
      ::oQt:setTitle(cTitle)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   IF valtype(bSize) == "B"
      ::bSize := bSize
   ENDIF

   IF valtype(bPaint) == "B"
      ::bPaint := bPaint
   ENDIF

   IF valtype(lCheckable) == "L"
      IF lCheckable
         ::oQt:setCheckable(.T.)
      ENDIF
   ENDIF

   IF valtype(lNoChecked) == "L"
      IF lNoChecked
         ::oQt:setChecked(.F.)
      ENDIF
   ENDIF

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

   ::activate()

RETURN self

METHOD activate () CLASS HWGGroup

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL
