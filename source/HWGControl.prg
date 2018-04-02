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
   METHOD onMove
   METHOD onPaint
   METHOD onGetFocus
   METHOD onLostFocus
   METHOD onShow
   METHOD onHide

ENDCLASS

// retorna o texto do controle
METHOD getText () CLASS HWGControl
RETURN ::oQt:text()

// define o texto do controle
METHOD setText (cText) CLASS HWGControl
   ::oQt:setText(cText)
RETURN NIL

METHOD configureEvents ( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide ) CLASS HWGControl

   IF valtype(bSize) == "B"
      ::bSize := bSize
   ENDIF

   IF valtype(bMove) == "B"
      ::bMove := bMove
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

   IF valtype(bShow) == "B"
      ::bShow := bShow
   ENDIF

   IF valtype(bHide) == "B"
      ::bHide := bHide
   ENDIF

RETURN NIL

METHOD connectEvents () CLASS HWGControl

   IF valtype(::bSize) == "B"
      ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ENDIF

   IF valtype(::bMove) == "B"
      ::oQt:onMoveEvent( {|oSender,oEvent| ::onMove(oSender,oEvent) } )
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

   IF valtype(::bShow) == "B"
      ::oQt:onShowEvent( {|oSender,oEvent| ::onShow(oSender,oEvent) } )
   ENDIF

   IF valtype(::bHide) == "B"
      ::oQt:onHideEvent( {|oSender,oEvent| ::onHide(oSender,oEvent) } )
   ENDIF

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGControl

   IF valtype(::bSize) == "B"
      eval(::bSize, self)
   ENDIF

RETURN NIL

METHOD onMove (oSender,oEvent) CLASS HWGControl

   IF valtype(::bMove) == "B"
      eval(::bMove, self)
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

METHOD onShow (oSender,oEvent) CLASS HWGControl

   IF valtype(::bShow) == "B"
      eval(::bShow, self)
   ENDIF

RETURN NIL

METHOD onHide (oSender,oEvent) CLASS HWGControl

   IF valtype(::bHide) == "B"
      eval(::bHide, self)
   ENDIF

RETURN NIL
