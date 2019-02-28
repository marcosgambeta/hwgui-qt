/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand BEGIN TOOLBAR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bInit> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGToolBar)():new( ;
             <oParent>, ;
             <cStyleSheet>, ;
             <{bInit}>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand END TOOLBAR => HWGFILO():remove()

// TODO: manter esta sintaxe com coordenadas ?

#xcommand @ <nX>,<nY> TOOLBAR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ ON INIT <bInit> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGToolBar)():new( ;
             <oParent>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <{bInit}>, ;
             <.lDisabled.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
