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

CLASS HControl INHERIT HCustomWindow

   // DATA bInit (definido em HCustomWindow)

   METHOD getText
   METHOD setText

ENDCLASS

// retorna o texto do controle
METHOD getText () CLASS HControl
RETURN ::oQt:text()

// define o texto do controle
METHOD setText (cText) CLASS HControl
   ::oQt:setText(cText)
RETURN NIL
