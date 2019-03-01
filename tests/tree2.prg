/*

  HWGUIQt Project - Test Program

  Copyright (C) 2019 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oTree
   LOCAL oNode1
   LOCAL oNode2
   LOCAL oNode21
   LOCAL oNode22
   LOCAL oNode3
   LOCAL oNode31
   LOCAL oNode32
   LOCAL oNode321
   LOCAL oNode322
   LOCAL oNode33
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 320,240

   @ 20,20 TREE oTree SIZE 200,130

   INSERT NODE oNode1 CAPTION "item1" TO oTree
   INSERT NODE oNode2 CAPTION "item2" TO oTree
      INSERT NODE oNode21 CAPTION "item21" TO oNode2
      INSERT NODE oNode22 CAPTION "item22" TO oNode2
   INSERT NODE oNode3 CAPTION "item3" TO oTree
      INSERT NODE oNode31 CAPTION "item31" TO oNode3
      INSERT NODE oNode32 CAPTION "item32" TO oNode3
         INSERT NODE oNode321 CAPTION "item321" TO oNode32
         INSERT NODE oNode322 CAPTION "item322" TO oNode32
      INSERT NODE oNode33 CAPTION "item33" TO oNode3

   @ 10,160 BUTTON oButtonOk CAPTION "Ok" SIZE 120,30 ;
      ON CLICK oDialog:accept()

   @ 150,160 BUTTON oButtonCancel CAPTION "Cancelar" SIZE 120,30 ;
      ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
