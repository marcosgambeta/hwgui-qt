/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> COMBOBOX [ <oObj> ITEMS ] <aItems> ;
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
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGComboBox)():new( <oParent>, ;
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
                                             , ;
                                             <bOnInit>, ;
                                             <.lDisabled.> )

#xcommand @ <nX>,<nY> GET COMBOBOX [ <oObj> VAR ] <xVar> ITEMS <aItems> ;
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
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGComboBox)():new( <oParent>, ;
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
                                             <xVar>, ;
                                             <bOnInit>, ;
                                             <.lDisabled.> )
