/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand SET TIMER <oObj> ;
          [ OF <oParent> ] ;
          [ VALUE <nValue> ] ;
          [ ACTION <bAction> ] ;
          => ;
          <oObj> := HWGTimer():new( <oParent>, ;
                                    <nValue>, ;
                                    <bAction> )
