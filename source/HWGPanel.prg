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

CLASS HWGPanel INHERIT HWGControl

   METHOD new

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, xForeColor, xBackColor, ;
             bOnInit ) CLASS HWGPanel

   IF valtype(oParent) == "O"
      ::oQt := QFrame():new(oParent:oQt)
   ELSE
      ::oQt := QFrame():new()
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip, cStatusTip, cWhatsThis )

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

RETURN self
