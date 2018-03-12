/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> DIAL [ <oObj> INIT ] <nValue> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ RANGE <nMinimum>,<nMaximum> ] ;
            [ <lNotchesVisible : NOTCHESVISIBLE> ] ;
            [ ON INIT <bOnInit> ] ;
            => ;
            [ <oObj> := ] HDial():new( <oParent>, ;
                                       <nX>, ;
                                       <nY>, ;
                                       <nWidth>, ;
                                       <nHeight>, ;
                                       <cToolTip>, ;
                                       <cStatusTip>, ;
                                       <cWhatsThis>, ;
                                       <cStyleSheet>, ;
                                       <oFont>, ;
                                       <nValue>, ;
                                       <nMinimum>, ;
                                       <nMaximum>, ;
                                       <.lNotchesVisible.>, ;
                                       <bOnInit> )

#xcommand @ <nX>,<nY> DIAL [ <oObj> VAR ] <xVar> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ RANGE <nMinimum>,<nMaximum> ] ;
            [ <lNotchesVisible : NOTCHESVISIBLE> ] ;
            [ ON INIT <bOnInit> ] ;
            => ;
            [ <oObj> := ] HDial():new( <oParent>, ;
                                       <nX>, ;
                                       <nY>, ;
                                       <nWidth>, ;
                                       <nHeight>, ;
                                       <cToolTip>, ;
                                       <cStatusTip>, ;
                                       <cWhatsThis>, ;
                                       <cStyleSheet>, ;
                                       <oFont>, ;
                                       <xVar>, ;
                                       <nMinimum>, ;
                                       <nMaximum>, ;
                                       <.lNotchesVisible.>, ;
                                       <bOnInit> )
