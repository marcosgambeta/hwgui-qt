/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand ADD STATUS [ <oObj> ] ;
          [ TO <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ ON ENABLED <bEnable> ] ;
          [ ON DISABLED <bDisable> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGStatus)():new( ;
             <oParent>, ;
             <cStyleSheet>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <{bEnable}>, ;
             <{bDisable}>, ;
             <.lDisabled.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
