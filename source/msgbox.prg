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

FUNCTION HWGQT_MSGINFO (cMessage, cTitle)

   LOCAL nRet

   IF cTitle == NIL
      cTitle := ""
   ENDIF

   nRet := QMessageBox():information( QApplication():activeWindow(), cTitle, cMessage )

RETURN nRet

FUNCTION HWGQT_MSGSTOP ()

   LOCAL nRet

   nRet := QMessageBox():critical( QApplication():activeWindow(), cTitle, cMessage )

RETURN nRet

FUNCTION HWGQT_MSGOKCANCEL ()
RETURN 0

FUNCTION HWGQT_MSGYESNO ()

   LOCAL nRet

   nRet := QMessageBox():question( QApplication():activeWindow(), cTitle, cMessage )

RETURN nRet

FUNCTION HWGQT_MSGNOYES ()
RETURN 0

FUNCTION HWGQT_MSGYESNOCANCEL ()
RETURN 0

FUNCTION HWGQT_MSGEXCLAMATION ()

   LOCAL nRet

   nRet := QMessageBox():warning( QApplication():activeWindow(), cTitle, cMessage )

RETURN nRet

FUNCTION HWGQT_MSGRETRYCANCEL ()
RETURN 0
