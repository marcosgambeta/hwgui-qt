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

CLASS HWGApplication INHERIT HWGObject

   METHOD new
   METHOD execute
   METHOD release

ENDCLASS

METHOD new () CLASS HWGApplication

   ::oQt := QApplication():new()

RETURN self

METHOD execute () CLASS HWGApplication

   ::oQt:exec()

RETURN NIL

METHOD release () CLASS HWGApplication

   ::oQt:delete()

RETURN NIL
