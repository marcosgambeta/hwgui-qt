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

CLASS HWGGrid INHERIT HWGControl

   DATA oModel
   DATA nItemCount INIT 0
   DATA aColumns INIT {}
   DATA bDispInfo

   METHOD new
   METHOD activate
   METHOD addColumn

ENDCLASS

METHOD new ( oParent, nId, nStyle, nX, nY, nWidth, nHeight, cToolTip, cStatusTip, cWhatsThis, ;
             cStyleSheet, oFont, xForeColor, xBackColor, ;
             bInit, bSize, bMove, bPaint, bGFocus, bLFocus, bShow, bHide, bEnable, bDisable, ;
             nItemCount, bDispInfo, lNoHeader, lNoGridLines, lDisabled, lInvisible ) CLASS HWGGrid

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

   IF valtype(nItemCount) == "N"
      ::nItemCount := nItemCount
   ENDIF

   IF valtype(bDispInfo) == "B"
      ::bDispInfo := bDispInfo
   ENDIF

   IF valtype(lNoHeader) == "L"
      IF lNoHeader
         ::oQt:horizontalHeader():setVisible(.F.)
      ENDIF
   ENDIF

   IF valtype(lNoGridLines) == "L"
      IF lNoGridLines
         ::oQt:setShowGrid(.F.)
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

   // cria o modelo
   ::oModel := HWGGridModel():new(::oQt)

   // armazena no modelo o objeto grid
   ::oModel:oGrid := self

   // associa modelo ao visualizador
   ::oQt:setModel(::oModel)

   IF ::oParent != NIL
      ::oParent:addControl(self)
   ENDIF

   ::activate()

RETURN self

METHOD activate () CLASS HWGGrid

   IF valtype(::bInit) == "B"
      eval(::bInit, self)
   ENDIF

RETURN NIL

METHOD addColumn ( cTitle, nWidth, nAlignment, n ) CLASS HWGGrid

   aadd( ::aColumns, { cTitle, nWidth, nAlignment, n } )

//   ::oQt:setColumnWidth( len(::aColumns)-1, ::aColumns[ len(::aColumns) ][2] )

   FOR nColumn := len(::aColumns) - 1 TO 0
      ::oQt:setColumnWidth( nColumn, ::aColumns[ nColumn + 1 ][2] )
      ::oQt:update()
   NEXT nColumn

RETURN NIL

//-----------------------------------------------------------------//

CLASS HWGGridModel INHERIT HAbstractTableModelV2

   DATA oGrid

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData
   METHOD flags
   METHOD setData

END CLASS

METHOD new (...) CLASS HWGGridModel

   ::super:new(...)

   ::setRowCountCB( {|...|::rowCount(...)} )
   ::setColumnCountCB( {|...|::columnCount(...)} )
   ::setDataCB( {|...|::data(...)} )
   ::setHeaderDataCB( {|...|::headerData(...)} )
   ::setFlagsCB( {|...|::flags(...)} )
   ::setSetDataCB( {|...|::setData(...)} )

RETURN self

METHOD rowCount () CLASS HWGGridModel
RETURN ::oGrid:nItemCount

METHOD columnCount () CLASS HWGGridModel
RETURN len( ::oGrid:aColumns )

METHOD data (pIndex, nRole) CLASS HWGGridModel

   LOCAL oVariant := QVariant():new()
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         IF valtype(::oGrid:bDispInfo) == "B"
            oVariant := QVariant():new( eval(::oGrid:bDispInfo, ::oGrid, nRow+1, nColumn+1) )
         ENDIF
      ELSEIF nRole == Qt_TextAlignmentRole
         // TODO: alinhamento das celulas
         //oVariant := QVariant():new( ::oGrid:aColumns[ nColumn+1 ][3] )
         oVariant := QVariant():new( Qt_AlignLeft )
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData (nSection, nOrientation, nRole) CLASS HWGGridModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new( ::oGrid:aColumns[ nSection+1 ][1] )
// TODO: vertical header
//    ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
//       oVariant := QVariant():new()
   ENDIF

RETURN oVariant

METHOD flags (pIndex) CLASS HWGGridModel

   //LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled
   LOCAL nFlags := Qt_ItemIsSelectable + Qt_ItemIsEnabled
   LOCAL oIndex := QModelIndex():newFrom(pIndex)
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

RETURN nFlags

METHOD setData (pIndex, pVariant, nRole) CLASS HWGGridModel

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
            // code to set data
            lSuccess := .T.
         ENDIF

      ENDIF

   ENDIF

RETURN lSuccess
