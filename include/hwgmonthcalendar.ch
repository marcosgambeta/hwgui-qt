/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> MONTHCALENDAR [ <oObj> ] ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ INIT <dDate> ] ;
            [ ON INIT <bOnInit> ] ;
            => ;
            [ <oObj> := ] HWGMonthCalendar():new( <oParent>, ;
                                                  <nX>, ;
                                                  <nY>, ;
                                                  <nWidth>, ;
                                                  <nHeight>, ;
                                                  <cToolTip>, ;
                                                  <cStatusTip>, ;
                                                  <cWhatsThis>, ;
                                                  <cStyleSheet>, ;
                                                  <oFont>, ;
                                                  <dDate>, ;
                                                  <bOnInit> )
