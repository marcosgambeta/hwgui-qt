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

CLASS HWGComboBox INHERIT HWGControl

   ACCESS nValue INLINE ::oQt:currentIndex()+1
   ASSIGN nValue(nValue) INLINE ::oQt:setCurrentIndex(nValue-1)

   ACCESS cValue INLINE ::oQt:currentText()
   //ASSIGN cValue(cValue) INLINE ::oQt:setCurrentText(cValue)

   DATA aItems INIT {}
   DATA bSetGet

   METHOD new
   METHOD activate
   METHOD clear

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             acItems, nInit, bSetGet, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGComboBox

   IF valtype(oParent) == "O"
      ::oQt := QComboBox():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QComboBox():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QComboBox():new()
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
   ::configureFont( oFont )
   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(acItems) == "A"
      ::aItems := acItems
      ::oQt:addItems(acItems)
   ENDIF

   IF valtype(nInit) == "N"
      ::oQt:setCurrentIndex(nInit-1)
   ENDIF

   ::bSetGet := bSetGet

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   IF valtype(lInvisible) == "L"
      IF lInvisible
         ::oQt:setVisible(.F.)
      ENDIF
   ENDIF

   IF valtype(::bSetGet) == "B"
      ::oQt:onCurrentIndexChanged1( {|oSender,nIndex|eval(::bSetGet,nIndex+1)} )
   ENDIF

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGComboBox

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD clear () CLASS HWGComboBox

   ::aItems := {}
   ::nValue := 0
   ::oQt:clear()

RETURN .T.
