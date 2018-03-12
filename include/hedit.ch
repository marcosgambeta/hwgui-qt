/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> GET [ <oObj> VAR ] <xVar> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ PICTURE <cPicture> ] ;
            [ ON INIT <bOnInit> ] ;
            => ;
            [ <oObj> := ] HEdit():new( <oParent>, ;
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
                                       {|x|iif(x==nil,<xVar>,<xVar>:=x)}, ;
                                       <cPicture>, ;
                                       <bOnInit> )
