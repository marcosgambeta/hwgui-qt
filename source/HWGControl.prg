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
#include "winapi.ch"

STATIC oBitArray // TODO: destruicao do objeto

CLASS HWGControl INHERIT HWGCustomWindow

   DATA nId

   METHOD newId
   METHOD freeId

   METHOD getText
   METHOD setText

   METHOD configureStyle
   METHOD configureEvents
   METHOD connectEvents

   METHOD onSize
   METHOD onMove
   METHOD onPaint
   METHOD onGetFocus
   METHOD onLostFocus
   METHOD onShow
   METHOD onHide
   METHOD onEnable
   METHOD onDisable

ENDCLASS

// TODO: nao retornar ID ja utilizado pelo usuario

METHOd newId () CLASS HWGControl

   LOCAL n := 0
   LOCAL nId := -1

   IF oBitArray == NIL
      oBitArray := QBitArray():new(8192*8) // 65536 items
   ENDIF

   DO WHILE n < oBitArray:size()
      IF !oBitArray:at(n)
         oBitArray:setBit(n)
         nId := n
         EXIT
      ENDIF
      ++n
   ENDDO

RETURN nId

METHOd freeId ( nId ) CLASS HWGControl

   IF oBitArray == NIL
      oBitArray := QBitArray():new(8192*8) // 65536 items
   ENDIF

   IF nId >= 0 .AND. nId <= 8192*8-1
      oBitArray:setBit(nId)
   ENDIF

RETURN NIL

// retorna o texto do controle
METHOD getText () CLASS HWGControl
RETURN ::oQt:text()

// define o texto do controle
METHOD setText (cText) CLASS HWGControl
   ::oQt:setText(cText)
RETURN NIL

METHOD configureStyle ( nStyle ) CLASS HWGControl

   // TODO: ajustar controle conforme flags da variavel nStyle

   //DO CASE
   //CASE hb_bitand( nStyle, WS_CHILD ) != 0
   //ENDCASE

RETURN NIL

METHOD configureEvents ( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable ) CLASS HWGControl

   IF valtype(bSize) == "B"
      ::bSize := bSize
   ENDIF

   IF valtype(bMove) == "B"
      ::bMove := bMove
   ENDIF

   IF valtype(bPaint) == "B"
      ::bPaint := bPaint
   ENDIF

   IF valtype(bGFocus) == "B"
      ::bGFocus := bGFocus
   ENDIF

   IF valtype(bLFocus) == "B"
      ::bLFocus := bLFocus
   ENDIF

   IF valtype(bShow) == "B"
      ::bShow := bShow
   ENDIF

   IF valtype(bHide) == "B"
      ::bHide := bHide
   ENDIF

   IF valtype(bEnable) == "B"
      ::bEnable := bEnable
   ENDIF

   IF valtype(bDisable) == "B"
      ::bDisable := bDisable
   ENDIF

RETURN NIL

METHOD connectEvents () CLASS HWGControl

   IF valtype(::bSize) == "B"
      ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ENDIF

   IF valtype(::bMove) == "B"
      ::oQt:onMoveEvent( {|oSender,oEvent| ::onMove(oSender,oEvent) } )
   ENDIF

   IF valtype(::bPaint) == "B"
      ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ENDIF

   IF valtype(::bGFocus) == "B"
      ::oQt:onFocusInEvent( {|oSender,oEvent| ::onGetFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(::bLFocus) == "B"
      ::oQt:onFocusOutEvent( {|oSender,oEvent| ::onLostFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(::bShow) == "B"
      ::oQt:onShowEvent( {|oSender,oEvent| ::onShow(oSender,oEvent) } )
   ENDIF

   IF valtype(::bHide) == "B"
      ::oQt:onHideEvent( {|oSender,oEvent| ::onHide(oSender,oEvent) } )
   ENDIF

   IF valtype(::bEnable) == "B" .OR. valtype(::bDisable) == "B"
      ::oQt:onEnabledChangeEvent( {|oSender,oEvent| iif(oSender:isEnabled(),::onEnable(oSender,oEvent),::onDisable(oSender,oEvent)) } )
   ENDIF

RETURN NIL

METHOD onSize (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bSize) == "B"
      eval(::bSize, self)
   ENDIF

RETURN NIL

METHOD onMove (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bMove) == "B"
      eval(::bMove, self)
   ENDIF

RETURN NIL

METHOD onPaint (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bPaint) == "B"
      eval(::bPaint, self)
   ENDIF

RETURN NIL

METHOD onGetFocus (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bGFocus) == "B"
      eval(::bGFocus, self)
   ENDIF

RETURN NIL

METHOD onLostFocus (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bLFocus) == "B"
      eval(::bLFocus, self)
   ENDIF

RETURN NIL

METHOD onShow (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bShow) == "B"
      eval(::bShow, self)
   ENDIF

RETURN NIL

METHOD onHide (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bHide) == "B"
      eval(::bHide, self)
   ENDIF

RETURN NIL

METHOD onEnable (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bEnable) == "B"
      eval(::bEnable, self)
   ENDIF

RETURN NIL

METHOD onDisable (oSender,oEvent) CLASS HWGControl

   HB_SYMBOL_UNUSED(oSender)
   HB_SYMBOL_UNUSED(oEvent)

   IF valtype(::bDisable) == "B"
      eval(::bDisable, self)
   ENDIF

RETURN NIL

FUNCTION hwgqt_markidasfree ( nId )

   IF oBitArray == NIL
      oBitArray := QBitArray():new(8192*8) // 65536 items
   ENDIF

   IF nId >= 0 .AND. nId <= 8192*8-1
      oBitArray:setBit(nId,.F.)
   ENDIF

RETURN NIL
