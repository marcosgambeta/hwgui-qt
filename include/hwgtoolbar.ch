/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// TODO: manter esta sintaxe com coordenadas ?

#xcommand @ <nX>,<nY> TOOLBAR [ <oObj> ] ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGToolBar)():new( <oParent>, ;
                                            <nX>, ;
                                            <nY>, ;
                                            <nWidth>, ;
                                            <nHeight>, ;
                                            <cToolTip>, ;
                                            <cStatusTip>, ;
                                            <cWhatsThis>, ;
                                            <cStyleSheet>, ;
                                            <oFont>, ;
                                            <bOnInit>, ;
                                            <.lDisabled.> )

#xcommand BEGIN TOOLBAR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bOnInit> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGToolBar)():new( <oParent>, ;
                                          <cStyleSheet>, ;
                                          <bOnInit>, ;
                                          <.lDisabled.> )

#xcommand END TOOLBAR => HWGFILO():remove()
