/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand PREPARE ACTION <oObj> ;
          [ OF <oParent> ] ;
          [ ICON <cIcon> ] ;
          [ TEXT <cText> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bOnInit> ] ;
          [ ON TRIGGERED <bOnTriggered> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGAction)():new(;
                        <oParent>,;
                        <cIcon>,;
                        <cText>,;
                        <cToolTip>,;
                        <cStatusTip>,;
                        <cWhatsThis>,;
                        <cStyleSheet>,;
                        <{bOnInit}>,;
                        <{bOnTriggered}>)
