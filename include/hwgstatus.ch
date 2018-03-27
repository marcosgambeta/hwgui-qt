/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand ADD STATUS [ <oObj> ] ;
          [ TO <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bInit> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGStatus)():new( ;
             <oParent>, ;
             <cStyleSheet>, ;
             <{bInit}>, ;
             <.lDisabled.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
