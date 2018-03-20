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

CLASS HWGTab INHERIT HWGControl

   DATA aPages INIT {}
   DATA oTemp

   METHOD new
   METHOD activate
   METHOD startPage
   METHOD endPage

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, oFont, ;
             aItems, ;
             bOnInit, lDisabled ) CLASS HWGTab

   IF valtype(oParent) == "O"
      ::oQt := QTabWidget():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QTabWidget():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QTabWidget():new()
      ENDIF
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

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   // atualiza propriedades do objeto

   ::nLeft   := ::oQt:x()
   ::nTop    := ::oQt:y()
   ::nWidth  := ::oQt:width()
   ::nHeight := ::oQt:height()

   ::activate()

RETURN self

METHOD activate () CLASS HWGTab

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL

METHOD startPage (cTitle,cToolTip,cStatusTip,cWhatsThis,cStyleSheet,oFont) CLASS HWGTab

   LOCAL oPage

   IF valtype(cTitle) == "C" // .AND. !empty(cTitle)
      oPage := HWGPage():new(,,,,,cToolTip,cStatusTip,cWhatsThis,cStyleSheet,oFont)
      aadd(::aPages,oPage)
      ::oQt:addTab(oPage:oQt,cTitle) // <cTitle>,<cToolTip>,<cStatusTip>,<cWhatsThis>,<cStyleSheet>,<oFont>
      HWGFILO():add(oPage)
   ENDIF

RETURN NIL

METHOD endPage () CLASS HWGTab

   HWGFILO():remove()

RETURN NIL
