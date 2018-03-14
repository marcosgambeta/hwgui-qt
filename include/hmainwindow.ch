/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand INIT WINDOW <oObj> ;
          [ OF <oParent> ] ;
          [ TITLE <cTitle> ] ;
          [ AT <nX>,<nY> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ MAIN ] ;
          [ <lMDI:MDI> ] ;
          => ;
          <oObj> := HMainWindow():new( <oParent>, ;
                                       <nX>, ;
                                       <nY>, ;
                                       <nWidth>, ;
                                       <nHeight>, ;
                                       <cToolTip>, ;
                                       <cStyleSheet>, ;
                                       <oFont>, ;
                                       <cTitle>, ;
                                       <.lMDI.> )
