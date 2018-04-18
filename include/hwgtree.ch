/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> TREE [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ ID <nId> ] ;
          [ STYLE <nStyle> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ ON ENABLE <bEnable> ] ;
          [ ON DISABLE <bDisable> ] ;
          [ ON CHECK <bCheck> ] ; /* INACTIVE */
          [ ON CLICK <bClick> ] ; /* INACTIVE */
          [ ON RIGHTCLICK <bRClick> ] ; /* INACTIVE */
          [ ON DBLCLICK <bDClick> ] ; /* INACTIVE */
          [ ON DRAG <bDrag> ] ; /* INACTIVE */
          [ ON DROP <bDrop> ] ; /* INACTIVE */
          [ ON OTHER MESSAGES <bOther> ] ; /* INACTIVE */
          [ ON OTHERMESSAGES <bOther> ] ; /* INACTIVE */
          [ <lEditable:EDITABLE> ] ; /* INACTIVE */
          [ <lDragDrop:DRAGDROP> ] ; /* INACTIVE */
          [ <lCheckBoxes:CHECKBOXES> ] ; /* INACTIVE */
          [ BITMAP <aBmp> [ <res:FROM RESOURCE> ] [ BITCOUNT <nBC> ] ] ; /* INACTIVE */
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGTree)():new( ;
             <oParent>, ;
             <nId>, ;
             <nStyle>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <{bEnable}>, ;
             <{bDisable}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand INSERT NODE [ <oObj> CAPTION ] <cTitle> TO <oTree> ;
          [ BITMAP <cIcon> ] ;
          [ ICON <cIcon> ] ;
          [ <lCheckable:CHECKABLE> ] ;
          [ <lChecked:CHECKED> ] ;
          [ AFTER <oPrevious> ] ; /* INACTIVE */
          [ BEFORE <oNext> ] ; /* INACTIVE */
          => ;
          [ <oObj> := ] <oTree>:addNode( <cTitle>, <cIcon>, <.lCheckable.>, <.lChecked.>, <oPrevious>, <oNext> )
