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

   METHOD new
   METHOD activate

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
   ::configureStyleSheet( cStyleSheet )
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(cTitle) == "C"
      ::oQt:setWindowTitle(cTitle)
   ENDIF

   ::lChild := .T.
   ::lMdi := .T.

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bPaint, bGFocus, bLFocus, bExit )

   ::connectEvents()

   HWGFILO():add(self)

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

   HWGFILO():remove()

   ::oEventLoop := QEventLoop():new()
   ::oEventLoop:exec()
   ::oEventLoop:delete()

RETURN NIL
