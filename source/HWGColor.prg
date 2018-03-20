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

CLASS HWGColor INHERIT HWGObject

   METHOD new
   METHOD release

ENDCLASS

METHOD new (...) CLASS HWGColor

   IF pcount() == 3 .AND. valtype(pvalue(1)) == "N" .AND. ;
                          valtype(pvalue(2)) == "N" .AND. ;
                          valtype(pvalue(3)) == "N"

      ::oQt := QColor():new(pvalue(1),pvalue(2),pvalue(3))

   ELSEIF pcount() == 1 .AND. valtype(pvalue(1)) == "N"

      ::oQt := QColor():new():setRGB(pvalue(1))

   ELSEIF pcount() == 1 .AND. valtype(pvalue(1)) == "C"

      ::oQt := QColor():new():setNamedColor(pvalue(1))

   ELSE

      ::oQt := QColor():new()

   ENDIF

RETURN self

METHOD release () CLASS HWGColor

   ::oQt:delete()

RETURN NIL
