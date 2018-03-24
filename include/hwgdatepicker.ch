/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> DATEPICKER [ <oObj> ] ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ INIT <dDate> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGDatePicker)():new( <oParent>, ;
                                               <nX>, ;
                                               <nY>, ;
                                               <nWidth>, ;
                                               <nHeight>, ;
                                               <cToolTip>, ;
                                               <cStatusTip>, ;
                                               <cWhatsThis>, ;
                                               <cStyleSheet>, ;
                                               <oFont>, ;
                                               <xForeColor>, ;
                                               <xBackColor>, ;
                                               <dDate>, ;
                                               <{bOnInit}>, ;
                                               <.lDisabled.> )

#xcommand @ <nX>,<nY> GET DATEPICKER [ <oObj> VAR ] <xVar> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ INIT <dDate> ] ;
            [ ON INIT <bOnInit> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGDatePicker)():new( <oParent>, ;
                                               <nX>, ;
                                               <nY>, ;
                                               <nWidth>, ;
                                               <nHeight>, ;
                                               <cToolTip>, ;
                                               <cStatusTip>, ;
                                               <cWhatsThis>, ;
                                               <cStyleSheet>, ;
                                               <oFont>, ;
                                               <xForeColor>, ;
                                               <xBackColor>, ;
                                               <dDate>, ;
                                               <{bOnInit}>, ;
                                               <.lDisabled.> )
