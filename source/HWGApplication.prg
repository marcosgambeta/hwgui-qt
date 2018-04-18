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

   //DATA cStyleSheet
   ACCESS cStyleSheet INLINE ::oQt:styleSheet()
   ASSIGN cStyleSheet(cStyleSheet) INLINE ::oQt:setStyleSheet(cStyleSheet)

   METHOD new
   METHOD execute
   METHOD release
   METHOD quit
   METHOD aboutQt

ENDCLASS

METHOD new ( cStyleSheet ) CLASS HWGApplication

   ::oQt := QApplication():new()

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

RETURN self

METHOD execute () CLASS HWGApplication

   ::oQt:exec()

RETURN NIL

METHOD release () CLASS HWGApplication

   ::oQt:delete()

RETURN NIL

METHOD quit () CLASS HWGApplication

   ::oQt:quit()

RETURN NIL

METHOD aboutQt () CLASS HWGApplication

   ::oQt:aboutQt()

RETURN NIL
