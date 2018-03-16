/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> EDITBOX [ <oObj> CAPTION ] <cText> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ ON INIT <bInit> ] ;
            [ ON SIZE <bSize> ] ;
            [ ON PAINT <bPaint> ] ;
            [ ON GETFOCUS <bGFocus> ] ;
            [ ON LOSTFOCUS <bLFocus> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGEditBox)():new( <oParent>, ;
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
                                         <bInit>, ;
                                         <bSize>, ;
                                         <bPaint>, ;
                                         <bGFocus>, ;
                                         <bLFocus> )
