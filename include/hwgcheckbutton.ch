/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> CHECKBOX [ <oObj> CAPTION ] <cText> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ INIT <lValue> ] ;
            [ ON INIT <bInit> ] ;
            [ ON SIZE <bSize> ] ;
            [ ON PAINT <bPaint> ] ;
            [ ON GETFOCUS <bGFocus> ] ;
            [ ON LOSTFOCUS <bLFocus> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGCheckButton)():new( <oParent>, ;
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
                                                <cText>, ;
                                                <lValue>, ;
                                                NIL, ;
                                                <bInit>,;
                                                <bSize>, ;
                                                <bPaint>, ;
                                                <bGFocus>, ;
                                                <bLFocus>, ;
                                                <.lDisabled.> )

#xcommand @ <nX>,<nY> GET CHECKBOX [ <oObj> VAR ] <xVar> ;
            CAPTION <cText> ;
            [ OF <oParent> ] ;
            [ SIZE <nWidth>,<nHeight> ] ;
            [ TOOLTIP <cToolTip> ] ;
            [ STATUSTIP <cStatusTip> ] ;
            [ WHATSTHIS <cWhatsThis> ] ;
            [ STYLESHEET <cStyleSheet> ] ;
            [ FONT <oFont> ] ;
            [ COLOR <xForeColor> ] ;
            [ BACKCOLOR <xBackColor> ] ;
            [ ON INIT <bInit> ] ;
            [ ON SIZE <bSize> ] ;
            [ ON PAINT <bPaint> ] ;
            [ ON GETFOCUS <bGFocus> ] ;
            [ ON LOSTFOCUS <bLFocus> ] ;
            [ <lDisabled:DISABLED> ] ;
            [ <class:CLASS> <className> ] ;
            => ;
            [ <oObj> := ] __IIF(<.class.>,<className>,HWGCheckButton)():new( <oParent>, ;
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
                                              <cText>, ;
                                              .F., ;
                                              <xVar>, ;
                                              <{bInit}>,;
                                              <{bSize}>, ;
                                              <{bPaint}>, ;
                                              <{bGFocus}>, ;
                                              <{bLFocus}>, ;
                                              <.lDisabled.> )
