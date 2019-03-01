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

CLASS HWGStatus INHERIT HWGControl

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, cStyleSheet, ;
             bInit, bSize, bMove, bPaint, bShow, bHide, bEnable, bDisable, ;
             lDisabled ) CLASS HWGStatus

   IF valtype(oParent) == "O"
      IF oParent:oQt:metaObject():className() == "QMainWindow"
         ::oQt := oParent:oQt:statusBar()
      ELSE
         ::oQt := QStatusBar():new(oParent:oQt)
         oParent:oQt:setStatusBar(::oQt)
      ENDIF
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         IF HWGFILO():last():oQt:metaObject():className() == "QMainWindow"
            ::oQt := HWGFILO():last():oQt:statusBar()
         ELSE
            ::oQt := QStatusBar():new(HWGFILO():last():oQt)
            HWGFILO():last():oQt:setStatusBar(::oQt)
         ENDIF
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QStatusBar():new()
      ENDIF
   ENDIF

   ::configureStyleSheet( cStyleSheet )

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, NIL, NIL, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   ::activate()

   //HWGFILO():add(self)

RETURN self

METHOD activate () CLASS HWGStatus

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL
