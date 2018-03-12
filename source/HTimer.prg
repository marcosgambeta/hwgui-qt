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

CLASS HTimer INHERIT HObject

   DATA bAction

   METHOD new
   METHOD start
   METHOD stop

ENDCLASS

METHOD new (oParent,nInterval,bAction) CLASS HTimer

   IF valtype(oParent) == "O"
      ::oQt := QTimer():new(oParent:oQt)
   ELSE
      ::oQt := QTimer():new()
   ENDIF

   IF valtype(nInterval) == "N"
      ::oQt:setInterval(nInterval)
   ENDIF

   IF valtype(bAction) == "B"
      ::bAction := bAction
      ::oQt:onTimeout(::bAction)
   ENDIF

   ::oQt:start()

RETURN self

METHOD start (nInterval) CLASS HTimer

   IF valtype(nInterval) == "N"
      ::oQt:start(nInterval)
   ELSEIF valtype(nInterval) == "U"
      ::oQt:start()
   ENDIF

RETURN NIL

METHOD stop () CLASS HTimer

   ::oQt:stop()

RETURN NIL
