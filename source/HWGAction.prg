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

CLASS HWGAction INHERIT HWGObject

   DATA bInit
   DATA bTriggered

   METHOD new
   METHOD activate
   METHOD onTriggered

ENDCLASS

METHOD new (oParent,cIcon,cText,cToolTip,cStatusTip,cWhatsThis,cStyleSheet,;
            bOnInit,bOnTriggered) CLASS HWGAction

   IF valtype(oParent) == "O"
      ::oQt := QAction():new(oParent:oQt)
   ELSE
      ::oQt := QAction():new()
   ENDIF

   IF valtype(cIcon) == "C"
      ::oQt:setIcon(cIcon)
   ENDIF

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
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

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   IF valtype(bOnTriggered) == "B"
      ::bTriggered := bOnTriggered
      ::oQt:onTriggered({||::onTriggered()}) // TODO: desconexão
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGAction

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD onTriggered () CLASS HWGAction

   IF ::bTriggered != NIL
      eval(::bTriggered)
   ENDIF

RETURN NIL
