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

CLASS HWGTimer INHERIT HWGObject

   DATA bAction

   METHOD new
   METHOD start
   METHOD stop

ENDCLASS

METHOD new (oParent,nInterval,bAction) CLASS HWGTimer

   IF valtype(oParent) == "O"
      ::oQt := QTimer():new(oParent:oQt)
      ::oParent := oParent
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

METHOD start (nInterval) CLASS HWGTimer

   IF valtype(nInterval) == "N"
      ::oQt:start(nInterval)
   ELSEIF valtype(nInterval) == "U"
      ::oQt:start()
   ENDIF

RETURN NIL

METHOD stop () CLASS HWGTimer

   ::oQt:stop()

RETURN NIL
