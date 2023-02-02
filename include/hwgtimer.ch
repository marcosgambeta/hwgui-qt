/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
