/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> GRID [ <oObj> ] ;
            [ OF <oParent> ] ;
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
            [ ON GETFOCUS <bGFocus> ] ;
            [ ON LOSTFOCUS <bLFocus> ] ;
            [ ITEMCOUNT <nItemCount> ] ;
            [ ON DISPINFO <bDispInfo> ] ;
            [ <lNoHeader:NO HEADER> ] ;
            [ <lNoGridLines:NOGRIDLINES> ] ;
            [ <lNoScroll:NOSCROLL> ] ;
            [ <lNoBorder:NOBORDER> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ OBJECTNAME <cObjectName> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGGrid)():new( <oParent>, ;
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
                                           <{bPaint}>, ;
                                           <{bGFocus}>, ;
                                           <{bLFocus}>, ;
                                           <nItemCount>, ;
                                           <{bDispInfo}>, ;
                                           <.lNoHeader.>, ;
                                           <.lNoGridLines.>, ;
                                           <.lDisabled.> )

#xcommand ADD COLUMN TO GRID <oGrid> ;
          [ HEADER <cTitle> ] ;
          [ WIDTH <nWidth> ] ;
          [ JUSTIFY HEAD <nAlignment> ] ;
          [ BITMAP <n> ] ;
          => ;
          <oGrid>:addColumn( <cTitle>, <nWidth>, <nAlignment>, <n> )
