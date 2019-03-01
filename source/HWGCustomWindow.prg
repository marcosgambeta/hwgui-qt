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

CLASS HWGCustomWindow INHERIT HWGObject

   DATA oParent
   DATA nStyle

   //DATA nLeft          // coordenada x do widget
   ACCESS nLeft INLINE ::oQt:x()
   ASSIGN nLeft(nX) INLINE ::oQt:move(nX,::oQt:y())
   //DATA nTop           // coordenada y do widget
   ACCESS nTop INLINE ::oQt:y()
   ASSIGN nTop(nY) INLINE ::oQt:move(::oQt:x(),nY)
   //DATA nWidth         // largura do widget
   ACCESS nWidth INLINE ::oQt:width()
   ASSIGN nWidth(nWidth) INLINE ::oQt:resize(nWidth,::oQt:height())
   //DATA nHeight        // altura do widget
   ACCESS nHeight INLINE ::oQt:height()
   ASSIGN nHeight(nHeight) INLINE ::oQt:resize(::oQt:width(),nHeight)

   //DATA nFixedWidth         // largura fixa do widget
   ACCESS nFixedWidth INLINE ::oQt:fixedWidth()
   ASSIGN nFixedWidth(nFixedWidth) INLINE ::setFixedSize(nFixedWidth,::fixedHeight())
   //DATA nFixedHeight        // altura fixa do widget
   ACCESS nFixedHeight INLINE ::oQt:fixedHeight()
   ASSIGN nFixedHeight(nFixedHeight) INLINE ::setFixedSize(::fixedWidth(),nFixedHeight)

   METHOD setFixedSize
   METHOD fixedWidth
   METHOD fixedHeight

   //DATA nMinimumWidth         // largura minima do widget
   ACCESS nMinimumWidth INLINE ::oQt:minimumWidth()
   ASSIGN nMinimumWidth(nMinimumWidth) INLINE ::oQt:setMinimumSize(nMinimumWidth,::oQt:minimumHeight())
   //DATA nMinimumHeight        // altura minima do widget
   ACCESS nMinimumHeight INLINE ::oQt:minimumHeight()
   ASSIGN nMinimumHeight(nMinimumHeight) INLINE ::oQt:setMinimumSize(::oQt:minimumWidth(),nMinimumHeight)

   //DATA nMaximumWidth         // largura maxima do widget
   ACCESS nMaximumWidth INLINE ::oQt:maximumWidth()
   ASSIGN nMaximumWidth(nMaximumWidth) INLINE ::oQt:setMaximumSize(nMaximumWidth,::oQt:maximumHeight())
   //DATA nMaximumHeight        // altura maxima do widget
   ACCESS nMaximumHeight INLINE ::oQt:maximumHeight()
   ASSIGN nMaximumHeight(nMaximumHeight) INLINE ::oQt:setMaximumSize(::oQt:maximumWidth(),nMaximumHeight)

   DATA lHide INIT .F. // .T. = visivel .F. = invisivel

   //DATA lEnabled       // habilitado ou nao
   ACCESS lEnabled INLINE ::oQt:isEnabled()
   ASSIGN lEnabled(lValue) INLINE ::oQt:setEnabled(lValue)

   //DATA lVisible       // visivel ou nao
   ACCESS lVisible INLINE ::oQt:isVisible()
   ASSIGN lVisible(lValue) INLINE ::oQt:setVisible(lValue)

   //DATA cToolTip
   ACCESS cToolTip INLINE ::oQt:toolTip()
   ASSIGN cToolTip(cToolTip) INLINE ::oQt:setToolTip(cToolTip)

   //DATA cStatusTip
   ACCESS cStatusTip INLINE ::oQt:statusTip()
   ASSIGN cStatusTip(cStatusTip) INLINE ::oQt:setStatusTip(cStatusTip)

   //DATA cWhatsThis
   ACCESS cWhatsThis INLINE ::oQt:whatsThis()
   ASSIGN cWhatsThis(cWhatsThis) INLINE ::oQt:setWhatsThis(cWhatsThis)

   //DATA cStyleSheet
   ACCESS cStyleSheet INLINE ::oQt:styleSheet()
   ASSIGN cStyleSheet(cStyleSheet) INLINE ::oQt:setStyleSheet(cStyleSheet)

// TODO: corrigir
//    ACCESS oFont INLINE ::oQt:font()
//    ASSIGN oFont(oFont) INLINE ::oQt:setFont(oFont)

   DATA bInit
   DATA bSize
   DATA bMove
   DATA bPaint
   DATA bGFocus
   DATA bLFocus
   DATA bShow
   DATA bHide
   DATA bEnable
   DATA bDisable
   DATA bExit

   METHOD configureGeometry
   METHOD configureTips
   METHOD configureStyleSheet
   METHOD configureFont
   METHOD configureColors

   DATA aControls INIT {}

   METHOD addControl // adiciona um controle no vetor
   METHOD delControl // remove um controle do vetor

   METHOD release

   METHOD move
   METHOD show
   METHOD hide
   METHOD enable
   METHOD disable
   METHOD isEnabled
   METHOD setFocus

//    METHOD onSize
//    METHOD onPaint
//    METHOD onGFocus
//    METHOD onLFocus

   METHOD listControls // debug
   METHOD idControls

ENDCLASS

METHOD configureGeometry ( nX, nY, nWidth, nHeight ) CLASS HWGCustomWindow

   IF valtype(nX) == "N"
      ::oQt:move(nX,::oQt:y())
   ENDIF

   IF valtype(nY) == "N"
      ::oQt:move(::oQt:x(),nY)
   ENDIF

   IF valtype(nWidth) == "N"
      ::oQt:resize(nWidth,::oQt:height())
   ENDIF

   IF valtype(nHeight) == "N"
      ::oQt:resize(::oQt:width(),nHeight)
   ENDIF

RETURN NIL

METHOD configureTips ( cToolTip, cStatusTip, cWhatsThis ) CLASS HWGCustomWindow

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

RETURN NIL

METHOD configureStyleSheet ( cStyleSheet ) CLASS HWGCustomWindow

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

RETURN NIL

METHOD configureFont ( oFont ) CLASS HWGCustomWindow

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

RETURN NIL

METHOD configureColors ( nColorRole1, xColor, nColorRole2, xBackColor ) CLASS HWGCustomWindow

   // cor de frente (fore)
   IF valtype(xColor) == "N"
      ::oQt:palette():setColor(nColorRole1, QColor():new():setRGB(xColor))
   ELSEIF valtype(xColor) == "C"
      ::oQt:palette():setColor(nColorRole1, QColor():new(xColor))
   ELSEIF valtype(xColor) == "A"
      IF len(xColor) == 3
         ::oQt:palette():setColor(nColorRole1, QColor():new(xColor[1],xColor[2],xColor[3]))
      ENDIF
   ELSEIF valtype(xColor) == "O"
      ::oQt:palette():setColor(nColorRole1, xColor:oQt)
   ENDIF

   // cor de fundo (back)
   IF valtype(xBackColor) == "N"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new():setRGB(xBackColor))
   ELSEIF valtype(xBackColor) == "C"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor))
   ELSEIF valtype(xBackColor) == "A"
      IF len(xBackColor) == 3
         ::oQt:setAutoFillBackground(.T.)
         ::oQt:palette():setColor(nColorRole2, QColor():new(xBackColor[1],xBackColor[2],xBackColor[3]))
      ENDIF
   ELSEIF valtype(xBackColor) == "O"
      ::oQt:setAutoFillBackground(.T.)
      ::oQt:palette():setColor(nColorRole2, xBackColor:oQt)
   ENDIF

RETURN NIL

METHOD addControl (oControl) CLASS HWGCustomWindow

   IF valtype(oControl) == "O"
      aadd(::aControls, oControl)
   ELSE
      alert("Erro no método addControl da classe HWGCustomWindow") // debug
   ENDIF

RETURN NIL

METHOD delControl (oControl) CLASS HWGCustomWindow

   LOCAL nIndex
   LOCAL aId := {}
   LOCAL n

   IF valtype(oControl) == "O"

      nIndex := ascan(::aControls, {|x|x:oQt:pointer == oControl:oQt:pointer})

      //IF oControl:oQt:close()

         // fill array aId with nId
         oControl:idControls(oControl, aId)

         // free nId
         FOR n := 1 TO len(aId)
            hwgqt_markidasfree(aId[n])
         NEXT n

         ::oQt:disconnectAll(.T.)

         ::delete()

         IF nIndex > 0
            adel(::aControls, nIndex)              // remove o objeto
            asize(::aControls, len(::aControls)-1) // atualiza o tamanho da array
         ENDIF

      //ENDIF

   ELSE

      alert("Erro no método delControl da classe HWGCustomWindow") // debug

   ENDIF

RETURN NIL

METHOD release () CLASS HWGCustomWindow

   ::delControl(self)

RETURN NIL

METHOD move ( nX, nY, nWidth, nHeight ) CLASS HWGCustomWindow

   // checa os parâmetros e atualiza as propriedades do objeto

   IF valtype(nX) == "N"
      ::nLeft := nX
   ENDIF

   IF valtype(nY) == "N"
      ::nTop := nY
   ENDIF

   IF valtype(nWidth) == "N"
      ::nWidth := nWidth
   ENDIF

   IF valtype(nHeight) == "N"
      ::nHeight := nHeight
   ENDIF

   // move para a posição determinada
   ::oQt:move(::nLeft,::nTop)

   // ajusta para o tamanho determinado
   ::oQt:resize(::nWidth,::nHeight)

RETURN NIL

METHOD show () CLASS HWGCustomWindow

   ::oQt:show()

   ::lHide := .F.

RETURN NIL

METHOD hide () CLASS HWGCustomWindow

   ::oQt:hide()

   ::lHide := .T.

RETURN NIL

METHOD enable () CLASS HWGCustomWindow

   ::oQt:setEnabled(.T.)

RETURN NIL

METHOD disable () CLASS HWGCustomWindow

   ::oQt:setEnabled(.F.)

RETURN NIL

METHOD isEnabled ()  CLASS HWGCustomWindow

RETURN ::oQt:isEnabled()

METHOD SetFocus () CLASS HWGCustomWindow

   ::oQt:setFocus()

RETURN NIL

METHOD listControls (oParent) CLASS HWGCustomWindow // debug

   LOCAL n
   LOCAL o
   
   IF oParent == NIL
      oParent := self
   ENDIF

   IF len(oParent:aControls) != 0

      ? len(oParent:aControls)

      FOR n := 1 TO len(oParent:aControls)
         o := oParent:aControls[n]
         ? "#",n,"nId=",o:nId,"cName",o:cName
         ::listControls(o)
      NEXT n

   ENDIF

RETURN NIL

METHOD idControls (oParent, a) CLASS HWGCustomWindow

   LOCAL n
   LOCAL o

   IF oParent == NIL
      oParent := self
   ENDIF

   IF len(oParent:aControls) != 0

      FOR n := 1 TO len(oParent:aControls)
         o := oParent:aControls[n]
         aadd(a,o:nId)
         ::idControls(o, a)
      NEXT n

   ENDIF

RETURN NIL

METHOD setFixedSize (nFixedWidth, nFixedHeight) CLASS HWGCustomWindow

   IF valtype(nFixedWidth) == "N"
      ::oQt:setFixedWidth(nFixedWidth)
   ENDIF

   IF valtype(nFixedHeight) == "N"
      ::oQt:setFixedHeight(nFixedHeight)
   ENDIF

RETURN NIL

METHOD fixedWidth () CLASS HWGCustomWindow

   LOCAL nRet := 16777215

   IF ::oQt:minimumWidth() == ::oQt:maximumWidth()
      nRet := ::oQt:minimumWidth()
   ENDIF

RETURN nRet

METHOD fixedHeight () CLASS HWGCustomWindow

   LOCAL nRet := 16777215

   IF ::oQt:minimumHeight() == ::oQt:maximumHeight()
      nRet := ::oQt:minimumHeight()
   ENDIF

RETURN nRet
