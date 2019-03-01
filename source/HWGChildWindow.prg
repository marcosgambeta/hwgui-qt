/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
             xForeColor, xBackColor, cTitle, cIcon, nOpacity, ;
             nFixedWidth, nFixedHeight, nMinimumWidth, nMinimumHeight, nMaximumWidth, nMaximumHeight, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bMaximize, bMinimize, bFullScreen, bRestore, bExit ) CLASS HWGChildWindow

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

   IF valtype(cIcon) == "C"
      ::oQt:setWindowIcon( QIcon():new(cIcon) )
   ENDIF

   IF valtype(nOpacity) == "N"
      ::oQt:setWindowOpacity( nOpacity )
   ENDIF

   IF valtype(nFixedWidth) == "N"
      ::oQt:setFixedWidth(nFixedWidth)
   ENDIF

   IF valtype(nFixedHeight) == "N"
      ::oQt:setFixedHeight(nFixedHeight)
   ENDIF

   IF valtype(nMinimumWidth) == "N"
      ::oQt:setMinimumWidth(nMinimumWidth)
   ENDIF

   IF valtype(nMinimumHeight) == "N"
      ::oQt:setMinimumHeight(nMinimumHeight)
   ENDIF

   IF valtype(nMaximumWidth) == "N"
      ::oQt:setMaximumWidth(nMaximumWidth)
   ENDIF

   IF valtype(nMaximumHeight) == "N"
      ::oQt:setMaximumHeight(nMaximumHeight)
   ENDIF

   ::lChild := .T.

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, bGFocus, bLFocus, bMaximize, bMinimize, bFullScreen, bRestore, bExit )
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
