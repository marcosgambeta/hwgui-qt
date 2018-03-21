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

CLASS HWGMdiChildWindow INHERIT HWGWindow

   DATA oEventLoop

   METHOD new
   METHOD activate
   METHOD close

   METHOD onSize
   METHOD onPaint
   METHOD onGFocus
   METHOD onLFocus

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStyleSheet, oFont, ;
             xForeColor, xBackColor, cTitle, ;
             bInit, bSize, bPaint, bGFocus, bLFocus, bExit ) CLASS HWGMdiChildWindow

   IF valtype(oParent) == "O"
      ::oQt := QMdiSubWindow():new()
      oParent:oMdiArea:addSubWindow(::oQt)
   ELSE
      ::oQt := QMdiSubWindow():new()
      HWGFILO():last():oQt:oMdiArea:addSubWindow(::oQt)
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip )

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

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

RETURN self

METHOD activate (lMaximized,lMinimized,lFullScreen,lNoShow) CLASS HWGMdiChildWindow

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

   IF valtype(lMaximized) == "L"
      IF lMaximized
         ::oQt:showMaximized()
      ENDIF
   ENDIF

   IF valtype(lMinimized) == "L"
      IF lMinimized
         ::oQt:showMinimized()
      ENDIF
   ENDIF

   IF valtype(lFullScreen) == "L"
      IF lFullScreen
         ::oQt:showFullScreen()
      ENDIF
   ENDIF

   IF valtype(lNoShow) == "L"
      IF !lNoShow
         ::show()
      ENDIF
   ELSE
      ::show()
   ENDIF

   ::oEventLoop := QEventLoop():new()
   ::oEventLoop:exec()
   ::oEventLoop:delete()

RETURN NIL

METHOD close () CLASS HWGMdiChildWindow

   ::oQt:close()
   ::oEventLoop:quit()

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGMdiChildWindow

   IF valtype(::bSize) == "B"
      eval(::bSize)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGMdiChildWindow

   IF valtype(::bPaint) == "B"
      eval(::bPaint)
   ENDIF

RETURN NIL

METHOD onGFocus (oSender,oEvent) CLASS HWGMdiChildWindow

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus)
   ENDIF

RETURN NIL

METHOD onLFocus (oSender,oEvent) CLASS HWGMdiChildWindow

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus)
   ENDIF

RETURN NIL
