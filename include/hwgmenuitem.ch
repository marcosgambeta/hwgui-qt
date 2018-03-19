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
          [ ID <nId> ] ;
          [ BITMAP <cBitmap> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():new( <oParent>, ;
                                           <cOption>, ;
                                           <{bAction}>, ;
                                           <cToolTip>, ;
                                           <cStatusTip>, ;
                                           <cWhatsThis>, ;
                                           <cStyleSheet>, ;
                                           .F., ;
                                           <nId>, ;
                                           <cBitmap>, ;
                                           <.lDisabled.> )

#xcommand SEPARATOR [ <oObj> ] ;
          [ OF <oParent> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():new( <oParent>, ;
                                           NIL, ;
                                           NIL, ;
                                           NIL, ;
                                           NIL, ;
                                           NIL, ;
                                           NIL, ;
                                           .T. )

#xcommand MENUITEM [ <oObj> ] USING ACTION <oAction> [ OF <oParent> ] [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGMenuItem)():newWithAction( <oParent>, <oAction> )
