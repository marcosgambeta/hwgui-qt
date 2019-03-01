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

CLASS HWGFont INHERIT HWGObject

   METHOD add

ENDCLASS

METHOD add (cName,nWidth,nHeight,nWeight,cCharset,nItalic,nUnderline,nStrikeout) CLASS HWGFont

   ::oQt := QFont():new()

   IF valtype(cName) == "C"
      ::oQt:setFamily(cName)
   ENDIF

   IF valtype(nWidth) == "N"
      ::oQt:setPointSize(nWidth)
   ENDIF

   IF valtype(nHeight) == "N"
      ::oQt:setPointSize(nHeight)
   ENDIF

   IF valtype(nWeight) == "N"
      ::oQt:setWeight(nWeight)
   ENDIF

   IF valtype(nItalic) == "N"
      IF nItalic == 1
         ::oQt:setItalic(.T.)
      ENDIF
   ENDIF

   IF valtype(nUnderline) == "N"
      IF nUnderline == 1
         ::oQt:setUnderline(.T.)
      ENDIF
   ENDIF

   IF valtype(nStrikeOut) == "N"
      IF nStrikeOut == 1
         ::oQt:setStrikeOut(.T.)
      ENDIF
   ENDIF

RETURN self
