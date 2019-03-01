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

STATIC aObjects := {}

CLASS HWGFILO

   METHOD add
   METHOD remove
   METHOD first
   METHOD last
   METHOD count

ENDCLASS

METHOD add (o) CLASS HWGFILO
   IF valtype(o) == "O"
      aadd(aObjects,o)
   ENDIF
RETURN NIL

METHOD remove () CLASS HWGFILO
   IF len(aObjects) > 0
      adel(aObjects,len(aObjects))
      aObjects := asize(aObjects,len(aObjects)-1)
   ENDIF
RETURN NIL

METHOD first () CLASS HWGFILO
RETURN iif(len(aObjects)>0,aObjects[1],NIL)

METHOD last () CLASS HWGFILO
RETURN iif(len(aObjects)>0,aObjects[len(aObjects)],NIL)

METHOD count () CLASS HWGFILO
RETURN len(aObjects)
