/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand PREPARE ACTION <oObj> ;
          [ OF <oParent> ] ;
          [ ICON <cIcon> ] ;
          [ TEXT <cText> ] ;
          [ ICONTEXT <cIconText> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ ON INIT <bInit> ] ;
          [ ON TRIGGERED <bTriggered> ] ;
          [ SHORTCUT <xKeySequence> ] ;
          [ <lCheckable:CHECKABLE> ] ;
          [ <lChecked:CHECKED> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGAction)():new( ;
             <oParent>, ;
             <cIcon>, ;
             <cText>, ;
             <cIconText>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <{bInit}>, ;
             <{bTriggered}>, ;
             <xKeySequence>, ;
             <.lCheckable.>, ;
             <.lChecked.>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
