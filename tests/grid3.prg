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
   LOCAL oGrid

   oApp := QApplication():new()

   INIT DIALOG oDialog TITLE "Teste da classe HWGGrid" SIZE 640,480

   @ 10,10 GRID oGrid SIZE 640-20,480-20 ITEMCOUNT 1000 ON DISPINFO {|oGrid,nRow,nCol|strzero(nRow,4)+","+strzero(nCol,4)}

   oGrid:addColumn( "Coluna 1", int(620/3), 0, 0 )
   oGrid:addColumn( "Coluna 2", int(620/3), 0, 0 )
   oGrid:addColumn( "Coluna 3", int(620/3), 0, 0 )
   
   oGrid:oQt:show()

   ACTIVATE DIALOG oDialog

   oDialog:delete()

   oApp:delete()

RETURN
