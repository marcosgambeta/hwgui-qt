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

CLASS HWGSayIcon INHERIT HWGSayImage

   METHOD new
   METHOD activate

ENDCLASS

METHOD new (oParent,nX,nY,nWidth,nHeight,cToolTip,cStatusTip,cWhatsThis,cStyleSheet,cIcon,bOnInit) CLASS HWGSayIcon

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
   ELSE
      ::oQt := QLabel():new()
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip, cStatusTip, cWhatsThis )

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(cIcon) == "C"
      ::oImage := QPixmap():new(cIcon)
      ::oQt:setPixmap(::oImage)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGSayIcon

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL
