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

CLASS HWGTrackBar INHERIT HWGControl

   ACCESS nValue INLINE ::oQt:value()
   ASSIGN nValue(nValue) INLINE ::oQt:setValue(nValue)

   ACCESS nMinimum INLINE ::oQt:minimum()
   ASSIGN nMinimum(nValue) INLINE ::oQt:setMinimum(nValue)

   ACCESS nMaximum INLINE ::oQt:maximum()
   ASSIGN nMaximum(nValue) INLINE ::oQt:setMaximum(nValue)

   METHOD new
   METHOD activate
   METHOD setRange

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             nValue, nMinimum, nMaximum, lVertical, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGTrackBar

   IF valtype(oParent) == "O"
      ::oQt := QSlider():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QSlider():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QSlider():new()
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

   IF valtype(nValue) == "N"
      ::oQt:setValue(nValue)
   ENDIF

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

   ::oQt:setOrientation(Qt_Horizontal)

   IF valtype(lVertical) == "L"
      IF lVertical
         ::oQt:setOrientation(Qt_Vertical)
      ENDIF
   ENDIF

   ::oQt:setTickPosition(QSlider_TicksBothSides)

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

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGTrackBar

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD SetRange (nMinimum,nMaximum) CLASS HWGTrackBar

   IF valtype(nMinimum) == "N" .AND. valtype(nMaximum) == "N"
      ::oQt:setRange(nMinimum,nMaximum)
   ENDIF

RETURN NIL
