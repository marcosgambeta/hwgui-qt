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

CLASS HWGToolBarItem INHERIT HWGControl

   DATA bAction

   METHOD new

ENDCLASS

METHOD new ( oParent, cOption, bAction, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, lSeparator, nId, cBitmap) CLASS HWGToolBarItem

   IF lSeparator == NIL
      lSeparator := .F.
   ENDIF

   IF !lSeparator

      IF valtype(oParent) == "O"
         ::oQt := oParent:oQt:addAction(cOption)
      ELSE
        ::oQt := QAction():new(cOption)
      ENDIF

      IF valtype(nId) == "N"
         ::oQt:setProperty("nId", QVariant():new(nId))
      ENDIF

      IF valtype(cBitmap) == "C"
         ::oQt:setIcon( QIcon():new(cBitmap) )
      ENDIF

      IF valtype(bAction) == "B"
        ::bAction := bAction
      ENDIF

      ::oQt:onTriggered({||iif(valtype(::bAction)=="B",eval(::bAction),NIL)})

   ELSE

      IF valtype(oParent) == "O"
         ::oQt := oParent:oQt:addSeparator()
      ELSE
        ::oQt := QAction():new():setSeparator(.T.)
      ENDIF

   ENDIF

RETURN self
