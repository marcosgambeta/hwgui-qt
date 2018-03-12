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

CLASS HMenuBar INHERIT HControl

   METHOD new

ENDCLASS

METHOD new (oParent,cStyleSheet) CLASS HMenuBar

   IF valtype(oParent) == "O"
      IF oParent:oQt:metaObject():className() == "QMainWindow"
         ::oQt := oParent:oQt:menuBar()
      ELSE
         ::oQt := QMenuBar():new(oParent:oQt)
         oParent:oQt:setMenuBar(::oQt)
      ENDIF
   ELSE
      ::oQt := QMenuBar():new()
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

RETURN self
