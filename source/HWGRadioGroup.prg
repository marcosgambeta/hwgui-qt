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

// TODO: QButtonGroup não é um objeto visual
//       possivel solucao: integrar com QFrame

CLASS HWGRadioGroup INHERIT HWGControl

   METHOD new

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet ) CLASS HWGRadioGroup

   IF valtype(oParent) == "O"
      ::oQt := QButtonGroup():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QButtonGroup():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QButtonGroup():new()
      ENDIF
   ENDIF

//    IF valtype(nX) == "N" .AND. valtype(nY) == "N"
//       ::oQt:move(nX,nY)
//    ENDIF

//    IF valtype(nWidth) == "N" .AND. valtype(nHeight) == "N"
//       ::oQt:resize(nWidth,nHeight)
//    ENDIF

//    IF valtype(cToolTip) == "C"
//       ::oQt:setToolTip(cToolTip)
//    ENDIF

//    IF valtype(cStatusTip) == "C"
//       ::oQt:setStatusTip(cStatusTip)
//    ENDIF

//    IF valtype(cWhatsThis) == "C"
//       ::oQt:setWhatsThis(cWhatsThis)
//    ENDIF

//    IF valtype(cStyleSheet) == "C"
//       ::oQt:setStyleSheet(cStyleSheet)
//    ENDIF

   // atualiza propriedades do objeto

//    ::nLeft   := ::oQt:x()
//    ::nTop    := ::oQt:y()
//    ::nWidth  := ::oQt:width()
//    ::nHeight := ::oQt:height()

RETURN self
