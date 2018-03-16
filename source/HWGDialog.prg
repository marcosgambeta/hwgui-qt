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

CLASS HWGDialog INHERIT HWGCustomWindow

   DATA lOnActivated INIT .F.
   DATA bOnActivate

   METHOD new
   METHOD activate
   METHOD close
   METHOD accept
   METHOD reject

   METHOD onSize
   METHOD onPaint
   METHOD onGFocus
   METHOD onLFocus

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStyleSheet, oFont, cTitle, ;
             bInit, bSize, bPaint, bGFocus, bLFocus, bExit ) CLASS HWGDialog

   IF valtype(oParent) == "O"
      ::oQt := QDialog():new(oParent:oQt)
   ELSE
      ::oQt := QDialog():new(QApplication():activeWindow())
   ENDIF

   IF valtype(nX) == "N" .AND. valtype(nY) == "N"
      ::oQt:move(nX,nY)
   ENDIF

   IF valtype(nWidth) == "N" .AND. valtype(nHeight) == "N"
      ::oQt:resize(nWidth,nHeight)
   ENDIF

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(cTitle) == "C"
      ::oQt:setWindowTitle(cTitle)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   IF valtype(bSize) == "B"
      ::bSize := bSize
      ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ENDIF

   IF valtype(bPaint) == "B"
      ::bPaint := bPaint
      ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ENDIF

   IF valtype(bGFocus) == "B"
      ::bGFocus := bGFocus
      ::oQt:onWindowActivateEvent( {|oSender,oEvent| ::onGFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(bLFocus) == "B"
      ::bLFocus := bLFocus
      ::oQt:onWindowDeactivateEvent( {|oSender,oEvent| ::onLFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(bExit) == "B"
      ::bExit := bExit
   ENDIF

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   HWGFILO():add(self)

RETURN self

METHOD activate (lNoModal,bOnActivate,nShow) CLASS HWGDialog

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

   ::oQt:exec()

RETURN NIL

METHOD close () CLASS HWGDialog

   ::oQt:done() // TODO: requer parametro numerico

RETURN NIL

METHOD accept () CLASS HWGDialog

   ::oQt:accept()

RETURN NIL

METHOD reject () CLASS HWGDialog

   ::oQt:reject()

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGDialog

   IF valtype(::bSize) == "B"
      eval(::bSize)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGDialog

   IF valtype(::bPaint) == "B"
      eval(::bPaint)
   ENDIF

RETURN NIL

METHOD onGFocus (oSender,oEvent) CLASS HWGDialog

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus)
   ENDIF

RETURN NIL

METHOD onLFocus (oSender,oEvent) CLASS HWGDialog

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus)
   ENDIF

RETURN NIL
