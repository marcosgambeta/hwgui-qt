/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> TAB [ <oObj> ITEMS ] <aItems> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGTab)():new( <oParent>, ;
                                        <nX>, ;
                                        <nY>, ;
                                        <nWidth>, ;
                                        <nHeight>, ;
                                        <cToolTip>, ;
                                        <cStatusTip>, ;
                                        <cWhatsThis>, ;
                                        <cStyleSheet>, ;
                                        <oFont>, ;
                                        <aItems>, ;
                                        <bOnInit> )

#xcommand BEGIN PAGE <cTitle> OF <oTab> ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          => ;
          <oTab>:startPage( <cTitle>, ;
                            <cToolTip>, ;
                            <cStatusTip>, ;
                            <cWhatsThis>, ;
                            <cStyleSheet>, ;
                            <oFont> )

#xcommand END PAGE OF <oTab> ;
          => ;
          <oTab>:endPage()

#xcommand ENDPAGE [ OF <oTab> ];
          => ;
          <oTab>:endPage()
