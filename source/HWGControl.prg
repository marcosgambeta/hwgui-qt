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

   METHOD configureTips
   METHOD configureColors

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

METHOD configureTips ( cToolTip, cStatusTip, cWhatsThis ) CLASS HWGControl

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

RETURN NIL

METHOD configureColors ( nColorRole1, xColor, nColorRole2, xBackColor ) CLASS HWGControl

   // cor de frente (fore)
   IF valtype(xColor) == "N"
      ::oQt:palette():setColor(nColorRole1, QColor():new():setRGB(xColor))
   ELSEIF valtype(xColor) == "C"
      ::oQt:palette():setColor(nColorRole1, QColor():new(xColor))
   ELSEIF valtype(xColor) == "A"
      IF len(xColor) == 3
         ::oQt:palette():setColor(nColorRole1, QColor():new(xColor[1],xColor[2],xColor[3]))
      ENDIF
   ELSEIF valtype(xColor) == "O"
      ::oQt:palette():setColor(nColorRole1, xColor:oQt)
   ENDIF

   // cor de fundo (back)
   IF valtype(xBackColor) == "N"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new():setRGB(xBackColor))
   ELSEIF valtype(xBackColor) == "C"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor))
   ELSEIF valtype(xBackColor) == "A"
      IF len(xBackColor) == 3
         ::oQt:setAutoFillBackground(.T.)
         ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor[1],xBackColor[2],xBackColor[3]))
      ENDIF
   ELSEIF valtype(xBackColor) == "O"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, xBackColor:oQt)
   ENDIF

RETURN NIL
