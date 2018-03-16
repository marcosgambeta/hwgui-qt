/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> PROGRESSBAR <oObj> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ <lVertical : VERTICAL> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGProgressBar)():new( <oParent>, ;
                                                <nX>, ;
                                                <nY>, ;
                                                <nWidth>, ;
                                                <nHeight>, ;
                                                <cToolTip>, ;
                                                <cStatusTip>, ;
                                                <cWhatsThis>, ;
                                                <cStyleSheet>, ;
                                                <oFont>, ;
                                                <.lVertical.>, ;
                                                <bOnInit> )
