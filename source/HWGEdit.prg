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

   METHOD New
   METHOD activate
   METHOD SetText

   METHOD SetGet (cValue) INLINE eval(::bSetGet,cValue)
   METHOD VarPut (cValue) INLINE ::SetGet(cValue)
   METHOD VarGet () INLINE ::SetGet()

ENDCLASS

METHOD New ( oParent, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             xVar, bSetGet, par13, ;
             bInit, bSize, bPaint, bGFocus, bLFocus, ;
             lPassword, nMaxLength, lNoBorder, lReadOnly, lDisabled ) CLASS HWGEdit

   IF valtype(oParent) == "O"
      ::oQt := QLineEdit():new(oParent:oQt)
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QLineEdit():new(HWGFILO():last():oQt)
      ELSE
         ::oQt := QLineEdit():new()
      ENDIF
   ENDIF

   ::configureGeometry( nX, nY, nWidth, nHeight )

   ::configureTips( cToolTip, cStatusTip, cWhatsThis )

   ::configureStyleSheet( cStyleSheet )

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   ::configureColors( ::oQt:foregroundRole(), xForeColor, ::oQt:backgroundRole(), xBackColor )

   IF valtype(xVar) == "C" //.OR. valtype(xVar) == "N" .OR. valtype(xVar) == "D"
      ::cType := valtype(xVar)
   ENDIF

   //IF valtype(xVar) == "C"
      //::oQt:setText(xVar)
      ::setText(xVar)
   //ENDIF

   ::bSetGet := bSetGet

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   IF valtype(bSize) == "B"
      ::bSize := bSize
      ::oQt:onResizeEvent( {|oSender,oEvent| ::onSize(oSender,oEvent) } )
   ENDIF

   IF valtype(bPaint) == "B"
      ::bPaint := bPaint
      ::oQt:onPaintEvent( {|oSender,oEvent| ::onPaint(oSender,oEvent) } )
   ENDIF

   IF valtype(bGFocus) == "B"
      ::bGFocus := bGFocus
      ::oQt:onFocusInEvent( {|oSender,oEvent| ::onGFocus(oSender,oEvent) } )
   ENDIF

   IF valtype(bLFocus) == "B"
      ::bLFocus := bLFocus
      ::oQt:onFocusOutEvent( {|oSender,oEvent| ::onLFocus(oSender,oEvent) } )
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

   IF valtype(lDisabled) == "L"
      IF lDisabled
         ::oQt:setEnabled(.F.)
      ENDIF
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGEdit

   IF valtype(::bInit) == "B"
      eval(::bInit)
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
