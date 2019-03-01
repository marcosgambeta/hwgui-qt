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

CLASS HWGListBox INHERIT HWGControl

   ACCESS nValue INLINE ::oQt:currentRow()+1
   ASSIGN nValue(nValue) INLINE ::oQt:setCurrentRow(nValue-1)

   DATA aItems INIT {}
   DATA bSetGet

   METHOD new
   METHOD activate
   METHOD clear

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             acItems, nInit, bSetget, ;
             lDisabled, lInvisible ) CLASS HWGListBox

   IF valtype(oParent) == "O"
      ::oQt := QListWidget():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QListWidget():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QListWidget():new()
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
      ::oQt:setCurrentRow(nInit-1)
   ELSE
      ::oQt:setCurrentRow(0)
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
      ::oQt:onCurrentRowChanged( {|oSender,nRow|eval(::bSetGet,nRow+1)} )
   ENDIF

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGListBox

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD clear () CLASS HWGListBox

   ::aItems := {}
   ::nValue := 0
   ::oQt:clear()

RETURN .T.
