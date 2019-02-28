/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand SET TIMER <oObj> ;
          [ OF <oParent> ] ;
          [ VALUE <nValue> ] ;
          [ ACTION <bAction> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGTimer)():new( ;
             <oParent>, ;
             <nValue>, ;
             <{bAction}> ) ;;
          [ <oObj>:cName := <(oObj)> ]
