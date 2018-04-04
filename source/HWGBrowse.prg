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

CLASS HWGBrowse INHERIT HWGControl

   DATA oModel
   DATA aColumns INIT {}
   DATA aArray INIT {}

   METHOD new
   METHOD activate

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             lArray, lDatabase, lDisabled, lInvisible ) CLASS HWGBrowse

   IF valtype(oParent) == "O"
      ::oQt := QTableView():new(oParent:oQt)
      ::oParent := oParent
   ELSE
      IF valtype(HWGFILO():last()) == "O"
         ::oQt := QTableView():new(HWGFILO():last():oQt)
         ::oParent := HWGFILO():last()
      ELSE
         ::oQt := QTableView():new()
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

   // cria o modelo
   ::oModel := HWGBrowseArrayModel():new(::oQt)

   // armazena no modelo o objeto browse
   ::oModel:oBrowse := self

   // associa modelo ao visualizador
   ::oQt:setModel(::oModel)

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGBrowse

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

//-----------------------------------------------------------------//

CLASS HWGBrowseArrayModel INHERIT HAbstractTableModelV2

   DATA oBrowse

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData
   METHOD flags
   METHOD setData

END CLASS

METHOD new (...) CLASS HWGBrowseArrayModel

   ::super:new(...)

   ::setRowCountCB( {|...|::rowCount(...)} )
   ::setColumnCountCB( {|...|::columnCount(...)} )
   ::setDataCB( {|...|::data(...)} )
   ::setHeaderDataCB( {|...|::headerData(...)} )
   ::setFlagsCB( {|...|::flags(...)} )
   ::setSetDataCB( {|...|::setData(...)} )

RETURN self

METHOD rowCount () CLASS HWGBrowseArrayModel
RETURN len( ::oBrowse:aArray )

METHOD columnCount () CLASS HWGBrowseArrayModel
RETURN iif( len( ::oBrowse:aArray ) > 0, len( ::oBrowse:aArray[1] ), 0 )

METHOD data (pIndex, nRole) CLASS HWGBrowseArrayModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new( ::oBrowse:aArray[ nRow+1 ][ nColumn+1 ] )
      ELSEIF nRole == Qt_EditRole
         oVariant := QVariant():new( ::oBrowse:aArray[ nRow+1 ][ nColumn+1 ] )
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData (nSection, nOrientation, nRole) CLASS HWGBrowseArrayModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( "Coluna "+alltrim(str(nSection+1)) )
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( "#"+alltrim(str(nSection+1)) )
   ENDIF

RETURN oVariant

METHOD flags (pIndex) CLASS HWGBrowseArrayModel

   //LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled
   LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEnabled
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

RETURN nFlags

METHOD setData (pIndex, pVariant, nRole) CLASS HWGBrowseArrayModel

   LOCAL lSuccess := .F.
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL oVariant := QVariant():newFrom(pVariant)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()
   LOCAL cValue := ""

   IF oIndex:isValid()

      IF nRole == Qt_EditRole

         cValue := oVariant:toString()

         IF !empty(cValue)
            ::oBrowse:aArray[ nRow+1 ][ nColumn+1 ] := oVariant:toString()
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess
