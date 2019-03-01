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
   LOCAL oNode323
   LOCAL oNode33
   LOCAL oButtonOk
   LOCAL oButtonCancel

   INIT APPLICATION oApp

   INIT DIALOG oDialog TITLE "Janela de diálogo" AT 300,300 SIZE 640,480

   @ 20,20 TREE oTree SIZE 600,400

   INSERT NODE oNode1 CAPTION "item1" TO oTree ICON "images/new.png"
   INSERT NODE oNode2 CAPTION "item2" TO oTree ICON "images/open.png"
      INSERT NODE oNode21 CAPTION "item21" TO oNode2 CHECKABLE
      INSERT NODE oNode22 CAPTION "item22" TO oNode2 CHECKABLE
   INSERT NODE oNode3 CAPTION "item3" TO oTree ICON "images/save.png"
      INSERT NODE oNode31 CAPTION "item31" TO oNode3
      INSERT NODE oNode32 CAPTION "item32" TO oNode3
         INSERT NODE oNode321 CAPTION "item321" TO oNode32 ICON "images/cut.png" CHECKABLE CHECKED
         INSERT NODE oNode322 CAPTION "item322" TO oNode32 ICON "images/copy.png" CHECKABLE CHECKED
         INSERT NODE oNode323 CAPTION "item323" TO oNode32 ICON "images/paste.png" CHECKABLE CHECKED
      INSERT NODE oNode33 CAPTION "item33" TO oNode3

   @ 640-20-120-20-120,440 BUTTON oButtonOk CAPTION "&Ok" SIZE 120,30 ;
      ON CLICK oDialog:accept()

   @ 640-20-120,440 BUTTON oButtonCancel CAPTION "&Cancelar" SIZE 120,30 ;
      ON CLICK oDialog:reject()

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
