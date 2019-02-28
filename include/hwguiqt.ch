/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef HWGUIQT_CH
#define HWGUIQT_CH

#ifdef __QT4XHB__
#include "qt4xhb.ch"
#endif

#ifdef __QT5XHB__
#include "qt5xhb.ch"
#endif

#include "winapi.ch"

#xtranslate __IIF(.T., [<true>], [<false>]) => <true>
#xtranslate __IIF(.F., [<true>], [<false>]) => <false>

#include "hwgaction.ch"
#include "hwgapplication.ch"
#include "hwgbrowse.ch"
#include "hwgbutton.ch"
#include "hwgbuttonex.ch"
#include "hwgcheckbutton.ch"
#include "hwgchildwindow.ch"
#include "hwgcolor.ch"
#include "hwgcombobox.ch"
#include "hwgdateedit.ch"
#include "hwgdatepicker.ch"
#include "hwgdial.ch"
#include "hwgdialog.ch"
#include "hwgedit.ch"
#include "hwgeditbox.ch"
#include "hwgfont.ch"
#include "hwggrid.ch"
#include "hwggroup.ch"
#include "hwglistbox.ch"
#include "hwgmainwindow.ch"
#include "hwgmdichildwindow.ch"
#include "hwgmenu.ch"
#include "hwgmenubar.ch"
#include "hwgmenuitem.ch"
#include "hwgmonthcalendar.ch"
#include "hwgpanel.ch"
#include "hwgprogressbar.ch"
#include "hwgradiobutton.ch"
#include "hwgsaybmp.ch"
#include "hwgsayicon.ch"
#include "hwgsayimg.ch"
#include "hwgstatic.ch"
#include "hwgstatus.ch"
#include "hwgtab.ch"
#include "hwgtimeedit.ch"
#include "hwgtimer.ch"
#include "hwgtoolbar.ch"
#include "hwgtoolbaritem.ch"
#include "hwgtrackbar.ch"
#include "hwgtree.ch"
#include "hwgupdown.ch"
#include "hwgwindow.ch"

#endif /* HWGUIQT_CH */
