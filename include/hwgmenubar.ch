/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand BEGIN MENUBAR <oObj> ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ <class:CLASS> <className> ] ;
          [ <lDisabled:DISABLED> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuBar)():new( ;
             <oParent>, ;
             <cStyleSheet>, ;
             <.lDisabled.> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand END MENUBAR => HWGFILO():remove()
