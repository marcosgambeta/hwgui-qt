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

CLASS HWGStatic INHERIT HWGControl

   DATA bInit
   DATA bClick
   DATA bDblClick

   METHOD new
   METHOD activate
   METHOD onClick
   METHOD onDblClick

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, cText, ;
             bInit, bSize, bMove, bPaint, bShow, bHide, bEnable, bDisable, ;
             bClick, bDblClick, lInvisible ) CLASS HWGStatic

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLabel():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QLabel():new()
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

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, NIL, NIL, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(bClick) == "B"
      ::bClick := bClick
   ENDIF

   IF valtype(bDblClick) == "B"
      ::bDblClick := bDblClick
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   ::oQt:onMouseButtonPressEvent({||::onClick()})
   ::oQt:onMouseButtonDblClickEvent({||::onDblClick()})

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGStatic

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD onClick () CLASS HWGStatic

   IF valtype(::bClick) == "B"
      eval(::bClick,self)
   ENDIF

RETURN NIL

METHOD onDblClick () CLASS HWGStatic

   IF valtype(::bDblClick) == "B"
      eval(::bDblClick,self)
   ENDIF

RETURN NIL
