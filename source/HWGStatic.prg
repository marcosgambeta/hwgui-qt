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

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, oFont, ;
             cText, bInit, bClick, bDblClick ) CLASS HWGStatic

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLabel():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QLabel():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   IF valtype(bClick) == "B"
      ::bClick := bClick
   ENDIF

   IF valtype(bDblClick) == "B"
      ::bDblClick := bDblClick
   ENDIF

   ::oQt:onMouseButtonPressEvent({||::onClick()})
   ::oQt:onMouseButtonDblClickEvent({||::onDblClick()})

   ::activate()

RETURN self

METHOD activate () CLASS HWGStatic

   IF valtype(::bInit) == "B"
      eval(::bInit)
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
