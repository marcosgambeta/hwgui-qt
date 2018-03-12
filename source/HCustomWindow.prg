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

CLASS HCustomWindow INHERIT HObject

   DATA nLeft          // coordenada x do widget
   DATA nTop           // coordenada y do widget
   DATA nWidth         // largura do widget
   DATA nHeight        // altura do widget

   DATA lHide INIT .F. // .T. = visivel .F. = invisivel

   METHOD move
   METHOD show
   METHOD hide
   METHOD enable
   METHOD disable
   METHOD isEnabled

ENDCLASS

METHOD move ( nX, nY, nWidth, nHeight ) CLASS HCustomWindow

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

METHOD show () CLASS HCustomWindow

   ::oQt:show()

   ::lHide := .F.

RETURN NIL

METHOD hide () CLASS HCustomWindow

   ::oQt:hide()

   ::lHide := .T.

RETURN NIL

METHOD enable () CLASS HCustomWindow

   ::oQt:setEnabled(.T.)

RETURN NIL

METHOD disable () CLASS HCustomWindow

   ::oQt:setEnabled(.F.)

RETURN NIL

METHOD isEnabled ()  CLASS HCustomWindow

RETURN ::oQt:isEnabled()

METHOD SetFocus () CLASS HCustomWindow

   ::oQt:setFocus()

RETURN NIL
