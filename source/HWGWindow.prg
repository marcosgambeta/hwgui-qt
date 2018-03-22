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

CLASS HWGWindow INHERIT HWGCustomWindow

   DATA lMain INIT .F.
   DATA lChild INIT .F.
   DATA lMdi INIT .F.

   DATA lClose INIT .F.

   DATA oEventLoop
   DATA oMdiArea

   METHOD getText
   METHOD setText

   METHOD maximize
   METHOD minimize
   METHOD restore
   METHOD fullScreen

   METHOD configureEvents
   METHOD connectEvents

   METHOD onPaint
   METHOD onSize
   METHOD onGetFocus
   METHOD onLostFocus

   METHOD close

ENDCLASS

// retorna o título da janela
METHOD getText () CLASS HWGWindow
RETURN ::oQt:windowTitle()

// define o título da janela
METHOD setText (cText) CLASS HWGWindow
   ::oQt:setWindowTitle(cTitle)
RETURN NIL

METHOD maximize () CLASS HWGWindow

   ::oQt:showMaximized()

RETURN NIL

METHOD minimize () CLASS HWGWindow

   ::oQt:showMinimized()

RETURN NIL

METHOD restore () CLASS HWGWindow

   ::oQt:showNormal()

RETURN NIL

METHOD fullScreen () CLASS HWGWindow

   ::oQt:showFullScreen()

RETURN NIL

METHOD configureEvents ( bSize, bPaint, bGFocus, bLFocus, bExit ) CLASS HWGWindow

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

   IF valtype(bExit) == "B"
      ::bExit := bExit
   ENDIF

RETURN NIL

METHOD connectEvents () CLASS HWGWindow

   ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ::oQt:onWindowActivateEvent( {|oSender,oEvent| ::onGetFocus(oSender,oEvent) } )
   ::oQt:onWindowDeactivateEvent( {|oSender,oEvent| ::onLostFocus(oSender,oEvent) } )

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bPaint) == "B"
      eval(::bPaint)
   ENDIF

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bSize) == "B"
      eval(::bSize)
   ENDIF

RETURN NIL

METHOD onGetFocus (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus)
   ENDIF

RETURN NIL

METHOD onLostFocus (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus)
   ENDIF

RETURN NIL

METHOD close () CLASS HWGWindow

   ::oQt:close()

   IF valtype(::oEventLoop) == "O"
      ::oEventLoop:quit()
   ENDIF

RETURN NIL
