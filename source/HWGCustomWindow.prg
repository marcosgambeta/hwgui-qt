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

CLASS HWGCustomWindow INHERIT HWGObject

   DATA nLeft          // coordenada x do widget
   DATA nTop           // coordenada y do widget
   DATA nWidth         // largura do widget
   DATA nHeight        // altura do widget

   DATA lHide INIT .F. // .T. = visivel .F. = invisivel

   DATA bInit
   DATA bSize
   DATA bPaint
   DATA bGFocus
   DATA bLFocus

   METHOD move
   METHOD show
   METHOD hide
   METHOD enable
   METHOD disable
   METHOD isEnabled

//    METHOD onSize
//    METHOD onPaint
//    METHOD onGFocus
//    METHOD onLFocus

ENDCLASS

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
