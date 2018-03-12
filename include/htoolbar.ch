/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> TOOLBAR [ <oObj> ] ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ ON INIT <bOnInit> ] ;
            => ;
            [ <oObj> := ] HToolBar():new( <oParent>, ;
                                          <nX>, ;
                                          <nY>, ;
                                          <nWidth>, ;
                                          <nHeight>, ;
                                          <cToolTip>, ;
                                          <cStatusTip>, ;
                                          <cWhatsThis>, ;
                                          <cStyleSheet>, ;
                                          <oFont>, ;
                                          <bOnInit> )

#xcommand BEGIN TOOLBAR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          => ;
          [ <oObj> ] := HToolBar():new( <oParent>, ;
                                        <cStyleSheet> )

#xcommand END TOOLBAR =>
