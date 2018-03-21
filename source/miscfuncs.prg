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

FUNCTION hwgqt_vcolor ( cColor )
RETURN iif( valtype(cColor)=="C", "#"+cColor, NIL )

FUNCTION hwgqt_getdesktopwidth ()
RETURN QApplication():desktop():screenGeometry():width()

FUNCTION hwgqt_getdesktopheight ()
RETURN QApplication():desktop():screenGeometry():height()

FUNCTION hwgqt_copystringtoclipboard (cText)
RETURN QApplication():clipboard():setText( cText )

FUNCTION hwgqt_getclipboardtext ()
RETURN QApplication():clipboard():text()
