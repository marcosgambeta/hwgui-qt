/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> BITMAP [ <oObj> SHOW ] <cBitmap> ;
          [ OF <oParent> ] ;
          [ ID <nId> ] ;
          [ STYLE <nStyle> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON MOVE <bMove> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON SHOW <bShow> ] ;
          [ ON HIDE <bHide> ] ;
          [ ON ENABLE <bEnable> ] ;
          [ ON DISABLE <bDisable> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGSayBmp)():new( ;
             <oParent>, ;
             <nId>, ;
             <nStyle>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <cBitmap>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bMove}>, ;
             <{bPaint}>, ;
             <{bShow}>, ;
             <{bHide}>, ;
             <{bEnable}>, ;
             <{bDisable}>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
