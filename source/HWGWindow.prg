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

   DATA lMain  INIT .F.
   DATA lChild INIT .F.
   DATA lMdi   INIT .F.
   DATA lModal INIT .F.
   DATA lClose INIT .F.

   DATA oEventLoop
   DATA oMdiArea

   //DATA nOpacity
   ACCESS nOpacity INLINE ::oQt:windowsOpacity()
   ASSIGN nOpacity(nValue) INLINE ::oQt:setWindowOpacity(nValue)

   //DATA lMaximized
   ACCESS lMaximized INLINE ::oQt:isMaximized()
   //ASSIGN lMaximized(lValue) INLINE ::oQt:maximized()

   //DATA lMinimized
   ACCESS lMinimized INLINE ::oQt:isMinimized()
   //ASSIGN lMinimized(lValue) INLINE ::oQt:minimized()

   //DATA lFullScreen
   ACCESS lFullScreen INLINE ::oQt:isFullScreen()
   //ASSIGN lFullScreen(lValue) INLINE ::oQt:fullScreen()

   DATA bMaximize
   DATA bMinimize
   DATA bFullScreen
   DATA bRestore

   METHOD getText
   METHOD setText

   METHOD maximize
   METHOD minimize
   METHOD fullScreen
   METHOD restore
   METHOD center
   METHOD close

   METHOD configureEvents
   METHOD connectEvents

   METHOD onSize
   METHOD onMove
   METHOD onPaint
   METHOD onGetFocus
   METHOD onLostFocus
   METHOD onWindowStateChange
   METHOD onWindowStateChanged
   METHOD onClose

ENDCLASS

// retorna o título da janela
METHOD getText () CLASS HWGWindow
RETURN ::oQt:windowTitle()

// define o título da janela
METHOD setText (cText) CLASS HWGWindow
   ::oQt:setWindowTitle(cText)
RETURN NIL

METHOD maximize () CLASS HWGWindow

   ::oQt:showMaximized()

RETURN NIL

METHOD minimize () CLASS HWGWindow

   ::oQt:showMinimized()

RETURN NIL

METHOD fullScreen () CLASS HWGWindow

   ::oQt:showFullScreen()

RETURN NIL

METHOD restore () CLASS HWGWindow

   ::oQt:showNormal()

RETURN NIL

METHOD center () CLASS HWGWindow

   ::oQt:setGeometry( QStyle():alignedRect( Qt_LeftToRight, Qt_AlignCenter, ::oQt:size(), QApplication():instance():desktop():availableGeometry() ) )

RETURN NIL

METHOD close () CLASS HWGWindow

   ::oQt:close()

   IF ::lClose .AND. valtype(::oEventLoop) == "O"
      //::oEventLoop:quit()
      IF ::oEventLoop:isRunning()
         ::oEventLoop:exit()
      ENDIF
   ENDIF

RETURN NIL

METHOD configureEvents ( bSize, bMove, bPaint, bGFocus, bLFocus, bMaximize, bMinimize, bFullScreen, bRestore, bExit ) CLASS HWGWindow

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

   IF valtype(bMaximize) == "B"
      ::bMaximize := bMaximize
   ENDIF

   IF valtype(bMinimize) == "B"
      ::bMinimize := bMinimize
   ENDIF

   IF valtype(bFullScreen) == "B"
      ::bFullScreen := bFullScreen
   ENDIF

   IF valtype(bRestore) == "B"
      ::bRestore := bRestore
   ENDIF

   IF valtype(bExit) == "B"
      ::bExit := bExit
   ENDIF

RETURN NIL

METHOD connectEvents () CLASS HWGWindow

   ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ::oQt:onMoveEvent( {|oSender,oEvent| ::onMove(oSender,oEvent) } )
   ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ::oQt:onWindowActivateEvent( {|oSender,oEvent| ::onGetFocus(oSender,oEvent) } )
   ::oQt:onWindowDeactivateEvent( {|oSender,oEvent| ::onLostFocus(oSender,oEvent) } )
   IF ::oQt:metaObject():className() == "QMdiSubWindow"
      ::oQt:onWindowStateChanged( {|oSender,nOldState,nNewState| ::onWindowStateChanged(oSender,nOldState,nNewState) } )
   ELSE
      ::oQt:onWindowStateChangeEvent( {|oSender,oEvent| ::onWindowStateChange(oSender,oEvent) } )
   ENDIF
   ::oQt:onCloseEvent( {|oSender,oEvent| ::onClose(oSender,oEvent) } )

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bSize) == "B"
      eval(::bSize, self)
   ENDIF

RETURN NIL

METHOD onMove (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bMove) == "B"
      eval(::bMove, self)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bPaint) == "B"
      eval(::bPaint, self)
   ENDIF

RETURN NIL

METHOD onGetFocus (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus, self)
   ENDIF

RETURN NIL

METHOD onLostFocus (oSender,oEvent) CLASS HWGWindow

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus, self)
   ENDIF

RETURN NIL

METHOD onWindowStateChange (oSender,oEvent) CLASS HWGWindow

   IF ::oQt:isMaximized() .AND. oEvent:oldState() <> Qt_WindowMaximized
      IF valtype(::bMaximize) == "B"
         eval(::bMaximize, self)
      ENDIF
   ENDIF

   IF ::oQt:isMinimized() .AND. oEvent:oldState() <> Qt_WindowMinimized
      IF valtype(::bMinimize) == "B"
         eval(::bMinimize, self)
      ENDIF
   ENDIF

   IF ::oQt:isFullScreen() .AND. oEvent:oldState() <> Qt_WindowFullScreen
      IF valtype(::bFullScreen) == "B"
         eval(::bFullScreen, self)
      ENDIF
   ENDIF

   IF ::oQt:windowState() == Qt_WindowNoState .AND. oEvent:oldState() <> Qt_WindowNoState
      IF valtype(::bRestore) == "B"
         eval(::bRestore, self)
      ENDIF
   ENDIF

RETURN .F.

METHOD onWindowStateChanged (oSender,nOldState,nNewState) CLASS HWGWindow

   IF ::oQt:isMaximized() .AND. nOldState <> Qt_WindowMaximized
      IF valtype(::bMaximize) == "B"
         eval(::bMaximize, self)
      ENDIF
   ENDIF

   IF ::oQt:isMinimized() .AND. nOldState <> Qt_WindowMinimized
      IF valtype(::bMinimize) == "B"
         eval(::bMinimize, self)
      ENDIF
   ENDIF

   // TODO: check
   //IF nNewState == Qt_WindowFullScreen .AND. nOldState <> Qt_WindowFullScreen
   //   IF valtype(::bFullScreen) == "B"
   //      eval(::bFullScreen, self)
   //   ENDIF
   //ENDIF

   IF nNewState == Qt_WindowNoState + Qt_WindowActive .AND. ( hb_bitand( nOldState, Qt_WindowMaximized ) != 0 .OR. hb_bitand( nOldState, Qt_WindowMinimized ) != 0 )
      IF valtype(::bRestore) == "B"
         eval(::bRestore, self)
      ENDIF
   ENDIF

RETURN NIL

METHOD OnClose (oSender,oEvent) CLASS HWGWindow

   LOCAL lRet

   IF valtype(::bExit) == "B"
      lRet := eval(::bExit, self)
   ENDIF

   IF valtype(lRet) <> "L"
      lRet := .T.
   ENDIF

   IF lRet
      oEvent:accept()
      ::lClose := .T.
   ELSE
      oEvent:ignore()
      ::lClose := .F.
   ENDIF

RETURN .T.
