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

// TODO: add font

CLASS HWGAction INHERIT HWGObject

   //DATA lEnabled       // enabled or not
   ACCESS lEnabled INLINE ::oQt:isEnabled()
   ASSIGN lEnabled(lValue) INLINE ::oQt:setEnabled(lValue)

   //DATA lVisible       // visible or not
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

   DATA bInit
   DATA bTriggered

   METHOD new
   METHOD activate
   METHOD onTriggered

ENDCLASS

METHOD new ( oParent, cIcon, cText, cIconText, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, oFont, ;
             bInit, bTriggered, xKeySequence, lCheckable, lChecked, lDisabled, lInvisible ) CLASS HWGAction

   IF valtype(oParent) == "O"
      ::oQt := QAction():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      ::oQt := QAction():new()
   ENDIF

   IF valtype(cIcon) == "C"
      ::oQt:setIcon(cIcon)
   ENDIF

   IF valtype(cText) == "C"
      ::oQt:setText(cText)
   ENDIF

   IF valtype(cIconText) == "C"
      ::oQt:setIconText(cIconText)
   ENDIF

   IF valtype(cToolTip) == "C"
      ::oQt:setToolTip(cToolTip)
   ENDIF

   IF valtype(cStatusTip) == "C"
      ::oQt:setStatusTip(cStatusTip)
   ENDIF

   IF valtype(cWhatsThis) == "C"
      ::oQt:setWhatsThis(cWhatsThis)
   ENDIF

   IF valtype(cStyleSheet) == "C"
      ::oQt:setStyleSheet(cStyleSheet)
   ENDIF

   IF valtype(oFont) == "O"
      ::oQt:setFont(oFont:oQt)
   ENDIF

   IF valtype(bInit) == "B"
      ::bInit := bInit
   ENDIF

   IF valtype(bTriggered) == "B"
      ::bTriggered := bTriggered
      ::oQt:onTriggered( {||::onTriggered()} ) // TODO: desconnection
   ENDIF

   IF valtype(xKeySequence) != "U"
      ::oQt:setShortcut( QKeySequence():new(xKeySequence) )
   ENDIF

   IF valtype(lCheckable) == "L"
      IF lCheckable
         ::oQt:setCheckable(.T.)
      ENDIF
   ENDIF

   IF valtype(lChecked) == "L"
      IF lChecked
         ::oQt:setChecked(.T.)
      ENDIF
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

   ::activate()

RETURN self

METHOD activate () CLASS HWGAction

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD onTriggered () CLASS HWGAction

   IF ::bTriggered != NIL
      eval(::bTriggered)
   ENDIF

RETURN NIL
