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

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, ;
             cImage, ;
             bInit, bSize, bMove, bPaint, bShow, bHide, bEnable, bDisable, ;
             lScaled, lInvisible ) CLASS HWGSayImage

   IF valtype(oParent) == "O"
      ::oQt := QLabel():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLabel():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QLabel():new()
      ENDIF
   ENDIF

   IF nId == NIL
      ::nId := ::newId()
   ELSE
      ::nId := nId
   ENDIF

   ::configureStyle( nStyle )
   ::configureGeometry( nX, nY, nWidth, nHeight )
   ::configureTips( cToolTip, cStatusTip, cWhatsThis )
   ::configureStyleSheet( cStyleSheet )

   IF valtype(cImage) == "C"
      ::oImage := QPixmap():new(cImage)
      ::oQt:setPixmap(::oImage)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, NIL, NIL, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(lScaled) == "L"
      IF lScaled
         ::oQt:setScaledContents(.T.)
      ENDIF
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGSayImage

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL
