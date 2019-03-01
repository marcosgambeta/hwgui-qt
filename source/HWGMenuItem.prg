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

CLASS HWGMenuItem INHERIT HWGControl

   DATA bAction

   METHOD new
   METHOD newWithAction

ENDCLASS

METHOD new ( oParent, cOption, bAction, cToolTip, cStatusTip, cWhatsThis, cStyleSheet, oFont, ;
             lSeparator, nId, cBitmap, xKeySequence, lCheckable, lChecked, lDisabled, lInvisible ) CLASS HWGMenuItem

   IF lSeparator == NIL
      lSeparator := .F.
   ENDIF

   IF !lSeparator

      IF valtype(oParent) == "O"
         ::oQt := oParent:oQt:addAction(cOption)
         ::oParent := oParent
      ELSE
        //::oQt := QAction():new(cOption)
        ::oQt := HWGFILO():last():oQt:addAction(cOption)
        ::oParent := HWGFILO():last()
      ENDIF

      ::configureTips( cToolTip, cStatusTip, cWhatsThis )
      ::configureStyleSheet( cStyleSheet )
      ::configureFont( oFont )

      IF valtype(nId) == "N"
         ::oQt:setProperty("nId", QVariant():new(nId))
      ENDIF

      IF valtype(cBitmap) == "C"
         ::oQt:setIcon( QIcon():new(cBitmap) )
      ENDIF

      IF valtype(xKeySequence) != "U"
         ::oQt:setShortcut( QKeySequence():new(xKeySequence) )
      ENDIF

      IF valtype(bAction) == "B"
        ::bAction := bAction
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

      ::oQt:onTriggered({||iif(valtype(::bAction)=="B",eval(::bAction),NIL)})

   ELSE

      IF valtype(oParent) == "O"
         ::oQt := oParent:oQt:addSeparator()
         ::oParent := oParent
      ELSE
         IF valtype(HWGFILO():last()) == "O"
            ::oQt := HWGFILO():last():oQt:addSeparator()
            ::oParent := HWGFILO():last()
         ELSE
            ::oQt := QAction():new():setSeparator(.T.)
         ENDIF
      ENDIF

   ENDIF

RETURN self

METHOD newWithAction (oParent,oAction) CLASS HWGMenuItem

   IF valtype(oParent) == "O"
      ::oQt := oParent:oQt:addAction(oAction:oQt)
      ::oParent := oParent
   ELSE
      IF HWGFilo():last():oQt:metaObject():className() == "QMenu"
         ::oQt := HWGFilo():last():oQt:addAction(oAction:oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := oAction:oQt
      ENDIF
   ENDIF

RETURN self
