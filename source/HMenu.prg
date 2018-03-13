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

CLASS HMenu INHERIT HControl

   METHOD new

ENDCLASS

METHOD new (oParent,cTitle,cStyleSheet) CLASS HMenu

   IF cTitle == NIL
      cTitle := ""
   ENDIF

   IF valtype(oParent) == "O"
      IF oParent:oQt:metaObject():className() == "QMenuBar"
         ::oQt := oParent:oQt:addMenu(cTitle)
      ELSEIF oParent:oQt:metaObject():className() == "QMenu"
         ::oQt := oParent:oQt:addMenu(cTitle)
      ELSE
         ::oQt := QMenu():new(cTitle, oParent:oQt)
      ENDIF
   ELSE
      //::oQt := QMenu():new(cTitle, HFILO():last():oQt)
      ::oQt := HFILO():last():oQt:addMenu(cTitle)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   HFILO():add(self)

RETURN self
