/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> BUTTON [ <oObj> CAPTION ] <cText> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ OBJECTNAME <cObjectName> ] ;
            [ ON INIT <bOnInit> ] ;
            [ ON CLICK <bOnClick> ] ;
            => ;
            [ <oObj> := ] HButton():new( <oParent>, ;
                                         <nX>, ;
                                         <nY>, ;
                                         <nWidth>, ;
                                         <nHeight>, ;
                                         <cToolTip>, ;
                                         <cStatusTip>, ;
                                         <cWhatsThis>, ;
                                         <cStyleSheet>, ;
                                         <oFont>, ;
                                         <cText>, ;
                                         <bOnInit>, ;
                                         <bOnClick> )
