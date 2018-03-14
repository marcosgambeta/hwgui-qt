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

CLASS HMainWindow INHERIT HWindow

   DATA lMDI INIT .F.
   DATA oMdiArea

   METHOD new
   METHOD activate
   METHOD maximize
   METHOD minimize
   METHOD restore
   METHOD close

ENDCLASS

METHOD new (oParent,nX,nY,nWidth,nHeight,cToolTip,cStyleSheet,oFont,cTitle,lMDI) CLASS HMainWindow

   IF valtype(oParent) == "O"
      ::oQt := QMainWindow():new(oParent)
   ELSE
      ::oQt := QMainWindow():new()
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

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   ::lMDI := lMDI

   IF lMDI
      ::oMdiArea := QMdiArea():new()
      ::oQt:setCentralWidget(::oMdiArea)
   ENDIF

RETURN self

METHOD activate (lMaximized,lMinimized,lFullScreen,lNoShow) CLASS HMainWindow

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

RETURN NIL

METHOD maximize () CLASS HMainWindow

   ::oQt:showMaximized()

RETURN NIL

METHOD minimize () CLASS HMainWindow

   ::oQt:showMinimized()

RETURN NIL

METHOD restore () CLASS HMainWindow

   ::oQt:showNormal()

RETURN NIL

METHOD close () CLASS HMainWindow

   ::oQt:close()

RETURN NIL
