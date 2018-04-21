/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand ACTIVATE WINDOW <oObj> ;
          [ <lMaximized : MAXIMIZED> ] ;
          [ <lMinimized : MINIMIZED> ] ;
          [ <lFullScreen : FULLSCREEN> ] ;
          [ <lNoShow : NOSHOW> ] ;
          [ <lCentered:CENTERED> ] ;
          [ <lModal:MODAL> ] ;
          => ;
          <oObj>:activate( ;
             <.lMaximized.>, ;
             <.lMinimized.>, ;
             <.lFullScreen.>, ;
             <.lCentered.>, ;
             <.lModal.>, ;
             <.lNoShow.> ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand CENTER WINDOW <oObj> => <oObj>:center()

#xcommand MAXIMIZE WINDOW <oObj> => <oObj>:maximize()

#xcommand MINIMIZE WINDOW <oObj> => <oObj>:minimize()

#xcommand FULLSCREEN WINDOW <oObj> => <oObj>:fullScreen()

#xcommand RESTORE WINDOW <oObj> => <oObj>:restore()

#xcommand SHOW WINDOW <oObj> => <oObj>:show()

#xcommand HIDE WINDOW <oObj> => <oObj>:hide()

#xcommand RELEASE WINDOW <oObj> => <oObj>:release()
