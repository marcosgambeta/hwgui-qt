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
          [ FONT <oFont> ] ;
          [ ON INIT <bInit> ] ;
          [ ON TRIGGERED <bTriggered> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGAction)():new( ;
             <oParent>, ;
             <cIcon>, ;
             <cText>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <{bInit}>, ;
             <{bTriggered}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
