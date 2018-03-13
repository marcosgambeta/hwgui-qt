/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand BEGIN MENUBAR <oObj> ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          => ;
          <oObj> := HMenuBar():new( <oParent>, ;
                                    <cStyleSheet> )

#xcommand END MENUBAR => HFILO():remove()
