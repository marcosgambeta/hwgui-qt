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

CLASS HDialog INHERIT HCustomWindow

   DATA lOnActivated INIT .F.
   DATA bOnActivate

   METHOD new
   METHOD activate
   METHOD close
   METHOD accept
   METHOD reject

ENDCLASS

METHOD new (oParent,nX,nY,nWidth,nHeight,cToolTip,cStyleSheet,oFont,cTitle) CLASS HDialog

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

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   HFILO():add(self)

RETURN self

METHOD activate (lNoModal,bOnActivate,nShow) CLASS HDialog

   ::oQt:exec()

RETURN NIL

METHOD close () CLASS HDialog

   ::oQt:done() // TODO: requer parametro numerico

RETURN NIL

METHOD accept () CLASS HDialog

   ::oQt:accept()

RETURN NIL

METHOD reject () CLASS HDialog

   ::oQt:reject()

RETURN NIL
