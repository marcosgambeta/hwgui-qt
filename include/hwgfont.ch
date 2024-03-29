/*

  HWGUIQt - m�dulo para Qt4xHb/Qt5xHb/Qt6xHb com sintaxe no estilo HWGUI

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand PREPARE FONT <oObj> ;
          [ NAME <cName> ] ;
          [ WIDTH <nWidth> ] ;
          [ HEIGHT <nHeight> ] ;
          [ WEIGHT <nWeight> ] ;
          [ CHARSET <cCharset> ] ;
          [ <lItalic : ITALIC> ] ;
          [ <lUnderline : UNDERLINE> ] ;
          [ <lStrikeout : STRIKEOUT> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGFont)():add( ;
             <cName>, ;
             <nWidth>, ;
             <nHeight>, ;
             <nWeight>, ;
             <cCharset>, ;
             iif(<.lItalic.>,1,0), ;
             iif(<.lUnderline.>,1,0), ;
             iif(<.lStrikeout.>,1,0) ) ;;
          [ <oObj>:cName := <(oObj)> ]
