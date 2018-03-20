/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> BROWSE [ <oObj> ] ;
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
            [ <lArray:ARRAY> ] ;
            [ <lDatabase:DATABASE> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ OBJECTNAME <cObjectName> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGBrowse)():new( <oParent>, ;
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
                                           <bInit>, ;
                                           <bSize>, ;
                                           <bPaint>, ;
                                           <bGFocus>, ;
                                           <bLFocus>, ;
                                           <.lArray.>, ;
                                           <.lDatabase.>, ;
                                           <.lDisabled.> )
