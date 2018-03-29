/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand MENUITEM [ <oObj> OPTION ] <cOption> ;
          [ OF <oParent> ] ;
          [ ACTION <bAction> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ ID <nId> ] ;
          [ BITMAP <cBitmap> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():new( ;
             <oParent>, ;
             <cOption>, ;
             <{bAction}>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             .F., ;
             <nId>, ;
             <cBitmap>, ;
             <.lDisabled.> ) ;;
          [ <oObj>:cName := <(oObj)> ]


#xcommand SEPARATOR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():new( ;
             <oParent>, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             .T. ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand MENUSEPARATOR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():new( ;
             <oParent>, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             NIL, ;
             .T. ) ;;
          [ <oObj>:cName := <(oObj)> ]

#xcommand MENUITEM [ <oObj> ] ;
          USING ACTION <oAction> ;
          [ OF <oParent> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():newWithAction( ;
             <oParent>, ;
             <oAction> ) ;;
          [ <oObj>:cName := <(oObj)> ]
