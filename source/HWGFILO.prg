/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif
#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif
#ifdef __QT5HBPP__
#include "qt5hbpp.ch"
#endif
#ifdef __QT6XHB__
#include "qt6xhb.ch"
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
