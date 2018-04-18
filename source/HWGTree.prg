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

CLASS HWGTree INHERIT HWGControl

   METHOD new
   METHOD activate
   METHOD addNode

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lDisabled, lInvisible ) CLASS HWGTree

   IF valtype(oParent) == "O"
      ::oQt := QTreeWidget():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QTreeWidget():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QTreeWidget():new()
      ENDIF
   ENDIF
   
   ::oQt:header():hide()

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

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGTree

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD addNode ( cTitle, cIcon, lCheckable, lChecked, oPrevious, oNext ) CLASS HWGTree

   LOCAL oTreeNode

   oTreeNode := HWGTreeNode():new( self )

   IF valtype(cTitle) == "C"
      oTreeNode:oQt:setText(0,cTitle)
   ENDIF

   IF valtype(cIcon) == "C"
      oTreeNode:oQt:setIcon(0,QIcon():new(cIcon))
   ENDIF

   IF valtype(lCheckable) == "L"
      IF lCheckable
         oTreeNode:oQt:setFlags( hb_bitor( oTreeNode:oQt:flags(), Qt_ItemIsUserCheckable ) )
         // TODO: estado inicial: checado ou nao checado ?
         oTreeNode:oQt:setCheckState(0,Qt_Unchecked)
      ENDIF
   ENDIF

   IF valtype(lChecked) == "L"
      IF lChecked
         oTreeNode:oQt:setCheckState(0,Qt_Checked)
      ENDIF
   ENDIF

   ::oQt:addTopLevelItem( oTreeNode:oQt )

RETURN oTreeNode
