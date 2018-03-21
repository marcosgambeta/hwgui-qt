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

CLASS HWGSayImage INHERIT HWGControl

   DATA oImage    // imagem (QPixmap)

   DATA bClick    // codigo para clique simples
   DATA bDblClick // codigo para clique duplo

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, cImage, bOnInit ) CLASS HWGSayImage

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
   ELSE
      ::oQt := QLabel():new()
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip, cStatusTip, cWhatsThis )

   ::configureStyleSheet( cStyleSheet )

   IF valtype(cImage) == "C"
      ::oImage := QPixmap():new(cImage)
      ::oQt:setPixmap(::oImage)
   ENDIF

   IF valtype(bOnInit) == "B"
      ::bInit := bOnInit
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGSayImage

   IF valtype(::bInit) == "B"
      eval(::bInit)
   ENDIF

RETURN NIL
