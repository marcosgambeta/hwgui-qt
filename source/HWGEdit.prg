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

CLASS HWGEdit INHERIT HWGControl

   DATA bSetGet
   DATA cType INIT "C"
   DATA cPicture INIT ""
   DATA bChange

   METHOD New
   METHOD activate
   METHOD SetText

   METHOD SetGet (cValue) INLINE eval(::bSetGet,cValue)
   METHOD VarPut (cValue) INLINE ::SetGet(cValue)
   METHOD VarGet () INLINE ::SetGet()

ENDCLASS

METHOD New ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             xVar, bSetGet, cPicture, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             bChange, lPassword, nMaxLength, lNoBorder, lReadOnly, cInputMask, lDisabled, lInvisible ) CLASS HWGEdit

   IF valtype(oParent) == "O"
      ::oQt := QLineEdit():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLineEdit():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QLineEdit():new()
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

   IF valtype(xVar) == "C" //.OR. valtype(xVar) == "N" .OR. valtype(xVar) == "D"
      ::cType := valtype(xVar)
   ENDIF

   //IF valtype(xVar) == "C"
      //::oQt:setText(xVar)
      ::setText(xVar)
   //ENDIF

   ::bSetGet := bSetGet

   IF valtype(cPicture) == "C"
      ::cPicture := cPicture
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   ::configureEvents( bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable )
   ::connectEvents()

   IF valtype(bChange) == "B"
      ::bChange := bChange
   ENDIF

   IF valtype(lPassword) == "L"
      IF lPassword
         ::oQt:setEchoMode(QLineEdit_Password)
      ENDIF
   ENDIF

   IF valtype(nMaxLength) == "N"
      ::oQt:setMaxLength(nMaxLength)
   ENDIF

   IF valtype(lNoBorder) == "L"
      IF lNoBorder
         ::oQt:setFrame(.F.)
      ENDIF
   ENDIF

   IF valtype(lReadOnly) == "L"
      IF lReadOnly
         ::oQt:setReadOnly(.T.)
      ENDIF
   ENDIF

   IF valtype(cInputMask) == "C"
      ::oQt:setInputMask(cInputMask)
   ENDIF

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

   ::oQt:onTextEdited( {|oSender,cText|eval(::bSetGet,cText)} )

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGEdit

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD SetText (xValue) CLASS HWGEdit

   IF valtype(xValue) == "C"

      ::oQt:setText(xValue)

      IF valtype(::bSetGet) == "B"
         eval(::bSetGet,xValue)
      ENDIF

   ENDIF

RETURN NIL
