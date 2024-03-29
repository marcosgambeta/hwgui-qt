/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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
