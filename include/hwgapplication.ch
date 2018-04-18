/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand INIT APPLICATION <oObj> ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGApplication)():new( ;
             <cStyleSheet> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand EXECUTE APPLICATION <oObj> => <oObj>:execute()

#xcommand RELEASE APPLICATION <oObj> => <oObj>:release()
