/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand BEGIN MENU [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ TITLE <cTitle> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenu)():new( <oParent>, ;
                                       <cTitle>, ;
                                       <cStyleSheet> )

#xcommand END MENU => HWGFILO():remove()
