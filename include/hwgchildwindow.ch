/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand INIT WINDOW <oObj> CHILD ;
          [ OF <oParent> ] ;
          [ TITLE <cTitle> ] ;
          [ ICON <cIcon> ] ;
          [ AT <nX>,<nY> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ FIXED SIZE <nFixedWidth>,<nFixedHeight> ] ;
          [ MINIMUM SIZE <nMinimumWidth>,<nMinimumHeight> ] ;
          [ MAXIMUM SIZE <nMaximumWidth>,<nMaximumHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ OPACITY <nOpacity> ] ;
          [ STYLE <nStyle> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON MAXIMIZE <bMaximize> ] ;
          [ ON MINIMIZE <bMinimize> ] ;
          [ ON FULLSCREEN <bFullScreen> ] ;
          [ ON RESTORE <bRestore> ] ;
          [ ON EXIT <bExit> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGChildWindow)():new( ;
             <oParent>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <cTitle>, ;
             <cIcon>, ;
             <nOpacity>, ;
             <nFixedWidth>, ;
             <nFixedHeight>, ;
             <nMinimumWidth>, ;
             <nMinimumHeight>, ;
             <nMaximumWidth>, ;
             <nMaximumHeight>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bMaximize}>, ;
             <{bMinimize}>, ;
             <{bFullScreen}>, ;
             <{bRestore}>, ;
             <{bExit}> ) ;;
          [ <oObj>:cName := <(oObj)> ]
