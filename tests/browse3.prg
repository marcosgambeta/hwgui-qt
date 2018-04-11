/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oBrowse

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGBrowse" SIZE 320,240

   @ 10,10 BROWSE oBrowse ARRAY SIZE 320-20,240-20 DISABLED

   ? oBrowse:oModel:rowCount()
   ? oBrowse:oModel:ColumnCount()

   oBrowse:aArray := { {"registro1",100}, ;
                       {"registro2",200}, ;
                       {"registro3",300}, ;
                       {"registro4",400}, ;
                       {"registro5",500}, ;
                       {"registro6",600}, ;
                       {"registro7",700}, ;
                       {"registro8",700}, ;
                       {"registro9",700}, ;
                       {"registro10",700} }

   ? oBrowse:oModel:rowCount()
   ? oBrowse:oModel:ColumnCount()

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
