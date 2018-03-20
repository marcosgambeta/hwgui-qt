/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> UPDOWN [ <oObj> INIT ] <nValue> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ RANGE <nMinimum>,<nMaximum> ] ;
            [ INCREMENT <nStep> ] ;
            [ PREFIX <cPrefix> ] ;
            [ SUFFIX <cSuffix> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGUpDown)():new( <oParent>, ;
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
                                           <nValue>, ;
                                           <nMinimum>, ;
                                           <nMaximum>, ;
                                           <nStep>, ;
                                           <cPrefix>, ;
                                           <cSuffix>, ;
                                           <bOnInit>, ;
                                           <.lDisabled.> )

#xcommand @ <nX>,<nY> UPDOWN [ <oObj> VAR ] <xVar> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ RANGE <nMinimum>,<nMaximum> ] ;
            [ INCREMENT <nStep> ] ;
            [ PREFIX <cPrefix> ] ;
            [ SUFFIX <cSuffix> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGUpDown)():new( <oParent>, ;
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
                                         <xVar>, ;
                                         <nMinimum>, ;
                                         <nMaximum>, ;
                                         <nStep>, ;
                                         <cPrefix>, ;
                                         <cSuffix>, ;
                                         <bOnInit>, ;
                                         <.lDisabled.> )
