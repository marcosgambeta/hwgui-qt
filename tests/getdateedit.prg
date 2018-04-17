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
   LOCAL oDateEdit
   LOCAL dData := date()

   SET DATE TO BRITISH
   SET CENTURY ON

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Teste da classe HWGDateEdit" SIZE 640,480

   @ 10,10 GET DATEEDIT oDateEdit VAR dData SIZE 80,30

   ACTIVATE DIALOG oDialog

   hwgqt_msginfo(dtoc(dData))

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
