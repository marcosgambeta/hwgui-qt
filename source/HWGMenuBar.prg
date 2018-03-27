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

CLASS HWGMenuBar INHERIT HWGControl

   METHOD new

ENDCLASS

METHOD new ( oParent, cStyleSheet, lDisabled ) CLASS HWGMenuBar

   IF valtype(oParent) == "O"
      IF oParent:oQt:metaObject():className() == "QMainWindow"
         ::oQt := oParent:oQt:menuBar()
      ELSE
         ::oQt := QMenuBar():new(oParent:oQt)
         oParent:oQt:setMenuBar(::oQt)
      ENDIF
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         IF HWGFILO():last():oQt:metaObject():className() == "QMainWindow"
            ::oQt := HWGFILO():last():oQt:menuBar()
         ELSE
            ::oQt := QMenuBar():new(HWGFILO():last():oQt)
            HWGFILO():last():oQt:setMenuBar(::oQt)
         ENDIF
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QMenuBar():new()
      ENDIF
   ENDIF

   ::configureStyleSheet( cStyleSheet )

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   HWGFILO():add(self)

RETURN self
