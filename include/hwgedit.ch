/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#xcommand @ <nX>,<nY> GET [ <oObj> VAR ] <xVar> ;
          [ OF <oParent> ] ;
          [ ID <nId> ] ;
          [ STYLE <nStyle> ] ;
          [ SIZE <nWidth>,<nHeight> ] ;
          [ TOOLTIP <cToolTip> ] ;
          [ STATUSTIP <cStatusTip> ] ;
          [ WHATSTHIS <cWhatsThis> ] ;
          [ STYLESHEET <cStyleSheet> ] ;
          [ FONT <oFont> ] ;
          [ COLOR <xForeColor> ] ;
          [ BACKCOLOR <xBackColor> ] ;
          [ PICTURE <cPicture> ] ;
          [ ON INIT <bInit> ] ;
          [ ON SIZE <bSize> ] ;
          [ ON PAINT <bPaint> ] ;
          [ ON GETFOCUS <bGFocus> ] ;
          [ ON LOSTFOCUS <bLFocus> ] ;
          [ ON KEYDOWN <bKeyDown> ] ;
          [ ON CHANGE <bChange> ] ;
          [ ON OTHER MESSAGES <bOther> ] ;
          [ ON OTHERMESSAGES <bOther> ] ;
          [ WHEN <bGFocus> ] ;
          [ VALID <bLFocus> ] ;
          [ <lPassword:PASSWORD> ] ;
          [ MAXLENGTH <nMaxLength> ] ;
          [ <lNoBorder:NOBORDER> ] ;
          [ <lReadOnly:READONLY> ] ;
          [ INPUTMASK <cInputMask> ] ;
          [ <lDisabled:DISABLED> ] ;
          [ <lInvisible:INVISIBLE> ] ;
          [ <class:CLASS> <className> ] ;
          => ;
          [ <oObj> := ] __IIF(<.class.>,<className>,HWGEdit)():new( ;
             <oParent>, ;
             <nX>, ;
             <nY>, ;
             <nWidth>, ;
             <nHeight>, ;
             <cToolTip>, ;
             <cStatusTip>, ;
             <cWhatsThis>, ;
             <cStyleSheet>, ;
             <oFont>, ;
             <xForeColor>, ;
             <xBackColor>, ;
             <xVar>, ;
             {|x|iif(x==nil,<xVar>,<xVar>:=x)}, ;
             <cPicture>, ;
             <{bInit}>, ;
             <{bSize}>, ;
             <{bPaint}>, ;
             <{bGFocus}>, ;
             <{bLFocus}>, ;
             <{bChange}>, ;
             <.lPassword.>, ;
             <nMaxLength>, ;
             <.lNoBorder.>, ;
             <.lReadOnly.>, ;
             <cInputMask>, ;
             <.lDisabled.>, ;
             <.lInvisible.> ) ;;
          [ <oObj>:cName := <(oObj)> ]
