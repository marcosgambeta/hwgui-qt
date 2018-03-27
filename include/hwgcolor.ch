/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand PREPARE COLOR <oObj> ;
          [ VALUE <xValue> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          <oObj> := __IIF(<.class.>,<className>,HWGColor)():new( ;
             <xValue> ) ;;
          [ <oObj>:cName := <(oObj)> ]
