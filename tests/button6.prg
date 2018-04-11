/*

  HWGUIQt Project - Test Program

  Copyright (C) 2018 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/HWGUIQt

*/

#include "hwguiqt.ch"

/*
  Para ver a mensagem especificada na clausula WHATSTHIS, clique no botão de
  interrogação (AJUDA), na barra de título da janela, e depois clique num
  dos botões presentes na janela
*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oDialog
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oFont1
   LOCAL oFont2
   LOCAL oFont3

   INIT APPLICATION oApp

   PREPARE FONT oFont1 NAME "Arial" WIDTH 14
   PREPARE FONT oFont2 NAME "Courier New" WIDTH 14
   PREPARE FONT oFont3 NAME "Verdana" WIDTH 14

   INIT DIALOG oDialog TITLE "Teste da classe HWGButton" SIZE 320,240

   @ 10,10 BUTTON oButton1 CAPTION "Botão 1" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>botão 1</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=red><i>'Botão 1 - ON CLICK'</i></font>" ;
      STYLESHEET "color: cyan; background-color: blue;" ;
      FONT oFont1 ;
      ON INIT {||hwgqt_MsgInfo("Botão 1 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 1 - ON CLICK")}

   @ 10,70 BUTTON oButton2 CAPTION "Botão 2" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>botão 2</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=green><i>'Botão 2 - ON CLICK'</i></font>" ;
      STYLESHEET "color: red; background-color: yellow;" ;
      FONT oFont2 ;
      ON INIT {||hwgqt_MsgInfo("Botão 2 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 2 - ON CLICK")}

   @ 10,140 BUTTON oButton3 CAPTION "Botão 3" SIZE 120,40 ;
      TOOLTIP "Eu sou o <b>botão 3</b>" ;
      WHATSTHIS "Se clicar em mim, vou mostrar a mensagem <font color=blue><i>'Botão 3 - ON CLICK'</i></font>" ;
      STYLESHEET "color: black; background-color: green;" ;
      FONT oFont3 ;
      ON INIT {||hwgqt_MsgInfo("Botão 3 - ON INIT")} ;
      ON CLICK {||hwgqt_MsgInfo("Botão 3 - ON CLICK")}

   ACTIVATE DIALOG oDialog

   RELEASE DIALOG oDialog

   RELEASE APPLICATION oApp

RETURN
