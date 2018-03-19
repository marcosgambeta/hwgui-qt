/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

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

   METHOD onSize
   METHOD onPaint
   METHOD onGFocus
   METHOD onLFocus

ENDCLASS

// retorna o texto do controle
METHOD getText () CLASS HWGControl
RETURN ::oQt:text()

// define o texto do controle
METHOD setText (cText) CLASS HWGControl
   ::oQt:setText(cText)
RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGControl

   IF valtype(::bSize) == "B"
      eval(::bSize)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGControl

   IF valtype(::bPaint) == "B"
      eval(::bPaint)
   ENDIF

RETURN NIL

METHOD onGFocus (oSender,oEvent) CLASS HWGControl

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus)
   ENDIF

RETURN NIL

METHOD onLFocus (oSender,oEvent) CLASS HWGControl

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus)
   ENDIF

RETURN NIL