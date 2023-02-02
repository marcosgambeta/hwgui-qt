/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand PREPARE COLOR <oObj> ;
          [ VALUE <xValue> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          <oObj> := __IIF(<.class.>,<className>,HWGColor)():new( ;
             <xValue> ) ;;
          [ <oObj>:cName := <(oObj)> ]
