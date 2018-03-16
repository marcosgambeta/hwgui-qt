/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> PANEL [ <oObj> ] ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGPanel)():new( <oParent>, ;
                                          <nX>, ;
                                          <nY>, ;
                                          <nWidth>, ;
                                          <nHeight>, ;
                                          <cToolTip>, ;
                                          <cStatusTip>, ;
                                          <cWhatsThis>, ;
                                          <cStyleSheet>, ;
                                          <bOnInit> )
