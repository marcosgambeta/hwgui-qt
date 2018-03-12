/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand INIT DIALOG <oObj> ;
          [ OF <oParent> ] ;
          [ TITLE <cTitle> ] ;
          [ AT <nX>,<nY> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          => ;
          <oObj> := HDialog():new( <oParent>, ;
                                   <nX>, ;
                                   <nY>, ;
                                   <nWidth>, ;
                                   <nHeight>, ;
                                   <cToolTip>, ;
                                   <cStyleSheet>, ;
                                   <oFont>, ;
                                   <cTitle> )

#xcommand ACTIVATE DIALOG <oObj> => <oObj>:activate()
