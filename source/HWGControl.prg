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

CLASS HWGControl INHERIT HWGCustomWindow

   // DATA bInit (definido em HCustomWindow)

   METHOD getText
   METHOD setText

   METHOD configureEvents
   METHOD connectEvents

   METHOD onSize
   METHOD onPaint
   METHOD onGetFocus
   METHOD onLostFocus

ENDCLASS

// retorna o texto do controle
METHOD getText () CLASS HWGControl
RETURN ::oQt:text()

// define o texto do controle
METHOD setText (cText) CLASS HWGControl
   ::oQt:setText(cText)
RETURN NIL

METHOD configureEvents ( bSize, bPaint, bGFocus, bLFocus ) CLASS HWGControl

   IF valtype(bSize) == "B"
      ::bSize := bSize
   ENDIF

   IF valtype(bPaint) == "B"
      ::bPaint := bPaint
   ENDIF

   IF valtype(bGFocus) == "B"
      ::bGFocus := bGFocus
   ENDIF

   IF valtype(bLFocus) == "B"
      ::bLFocus := bLFocus
   ENDIF

RETURN NIL

METHOD connectEvents () CLASS HWGControl

   IF valtype(::bSize) == "B"
      ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ENDIF

   IF valtype(::bPaint) == "B"
      ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ENDIF

   IF valtype(::bGFocus) == "B"
      ::oQt:onFocusInEvent( {|oSender,oEvent| ::onGetFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(::bLFocus) == "B"
      ::oQt:onFocusOutEvent( {|oSender,oEvent| ::onLostFocus(oSender,oEvent) } )
   ENDIF

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGControl

   IF valtype(::bSize) == "B"
      eval(::bSize, self)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGControl

   IF valtype(::bPaint) == "B"
      eval(::bPaint, self)
   ENDIF

RETURN NIL

METHOD onGetFocus (oSender,oEvent) CLASS HWGControl

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus, self)
   ENDIF

RETURN NIL

METHOD onLostFocus (oSender,oEvent) CLASS HWGControl

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus, self)
   ENDIF

RETURN NIL
