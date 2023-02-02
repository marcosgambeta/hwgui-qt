/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

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

CLASS HWGColumn INHERIT HWGObject

   DATA cTitle
   DATA bField
   DATA cType
   DATA nLength
   DATA nDecimals
   DATA lEditable

   METHOD new

ENDCLASS

METHOD new ( cTitle, bField, cType, nLength, nDecimals, lEditable ) CLASS HWGColumn

   ::cTitle    := cTitle
   ::bField    := bField
   ::cType     := cType
   ::nLength   := nLength
   ::nDecimals := nDecimals
   ::lEditable := lEditable

RETURN self
