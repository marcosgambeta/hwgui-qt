/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> GROUPBOX [ <oObj> CAPTION ] <cCaption> ;
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
          [ ON PAINT <bPaint> ] ;
          [ <lCheckable:CHECKABLE> ] ;
          [ <lNoChecked:NOCHECKED> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGGroup)():new( ;
             <oParent>, ;
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
             <cCaption>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bPaint}>, ;
             <.lCheckable.>, ;
             <.lNoChecked.>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
