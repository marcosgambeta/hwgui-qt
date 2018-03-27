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

CLASS HWGChildWindow INHERIT HWGWindow

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStyleSheet, oFont, ;
             xForeColor, xBackColor, cTitle, ;
             bInit, bSize, bPaint, bGFocus, bLFocus, bExit ) CLASS HWGChildWindow

   IF valtype(oParent) == "O"
      ::oQt := QWidget():new()
      ::oParent := oParent
   ELSE
      ::oQt := QWidget():new()
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

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bPaint, bGFocus, bLFocus, bExit )

   ::connectEvents()

   HWGFILO():add(self)

RETURN self

METHOD activate ( lMaximized, lMinimized, lFullScreen, lCentered, lModal, lNoShow ) CLASS HWGChildWindow

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
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

   IF valtype(lCentered) == "L"
      IF lCentered
         ::center()
      ENDIF
   ENDIF

   IF valtype(lModal) == "L"
      IF lmodal
         ::oQt:setWindowModality(Qt_ApplicationModal)
         ::lModal := .T.
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
