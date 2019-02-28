/*

  HWGUIQt - módulo para Qt4xHb/Qt5xHb com sintaxe no estilo HWGUI

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// Window Styles

#define WS_BORDER                                0x00800000 //L
#define WS_CAPTION                               0x00C00000 //L
#define WS_CHILD                                 0x40000000 //L
#define WS_CHILDWINDOW                           0x40000000 //L
#define WS_CLIPCHILDREN                          0x02000000 //L
#define WS_CLIPSIBLINGS                          0x04000000 //L
#define WS_DISABLED                              0x08000000 //L
#define WS_DLGFRAME                              0x00400000 //L
#define WS_GROUP                                 0x00020000 //L
#define WS_HSCROLL                               0x00100000 //L
#define WS_ICONIC                                0x20000000 //L
#define WS_MAXIMIZE                              0x01000000 //L
#define WS_MAXIMIZEBOX                           0x00010000 //L
#define WS_MINIMIZE                              0x20000000 //L
#define WS_MINIMIZEBOX                           0x00020000 //L
#define WS_OVERLAPPED                            0x00000000 //L
//#define WS_OVERLAPPEDWINDOW                      (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)
#define WS_POPUP                                 0x80000000 //L
//#define WS_POPUPWINDOW                           (WS_POPUP | WS_BORDER | WS_SYSMENU)
#define WS_SIZEBOX                               0x00040000 //L
#define WS_SYSMENU                               0x00080000 //L
#define WS_TABSTOP                               0x00010000 //L
#define WS_THICKFRAME                            0x00040000 //L
#define WS_TILED                                 0x00000000 //L
//#define WS_TILEDWINDOW                           (WS_OVERLAPPED | WS_CAPTION | WS_SYSMENU | WS_THICKFRAME | WS_MINIMIZEBOX | WS_MAXIMIZEBOX)
#define WS_VISIBLE                               0x10000000 //L
#define WS_VSCROLL                               0x00200000 //L

// Extended Window Styles

#define WS_EX_ACCEPTFILES                        0x00000010 //L
#define WS_EX_APPWINDOW                          0x00040000 //L
#define WS_EX_CLIENTEDGE                         0x00000200 //L
#define WS_EX_COMPOSITED                         0x02000000 //L
#define WS_EX_CONTEXTHELP                        0x00000400 //L
#define WS_EX_CONTROLPARENT                      0x00010000 //L
#define WS_EX_DLGMODALFRAME                      0x00000001 //L
#define WS_EX_LAYERED                            0x00080000
#define WS_EX_LAYOUTRTL                          0x00400000 //L
#define WS_EX_LEFT                               0x00000000 //L
#define WS_EX_LEFTSCROLLBAR                      0x00004000 //L
#define WS_EX_LTRREADING                         0x00000000 //L
#define WS_EX_MDICHILD                           0x00000040 //L
#define WS_EX_NOACTIVATE                         0x08000000 //L
#define WS_EX_NOINHERITLAYOUT                    0x00100000 //L
#define WS_EX_NOPARENTNOTIFY                     0x00000004 //L
#define WS_EX_NOREDIRECTIONBITMAP                0x00200000 //L
//#define WS_EX_OVERLAPPEDWINDOW                   (WS_EX_WINDOWEDGE | WS_EX_CLIENTEDGE)
//#define WS_EX_PALETTEWINDOW                      (WS_EX_WINDOWEDGE | WS_EX_TOOLWINDOW | WS_EX_TOPMOST)
#define WS_EX_RIGHT                              0x00001000 //L
#define WS_EX_RIGHTSCROLLBAR                     0x00000000 //L
#define WS_EX_RTLREADING                         0x00002000 //L
#define WS_EX_STATICEDGE                         0x00020000 //L
#define WS_EX_TOOLWINDOW                         0x00000080 //L
#define WS_EX_TOPMOST                            0x00000008 //L
#define WS_EX_TRANSPARENT                        0x00000020 //L
#define WS_EX_WINDOWEDGE                         0x00000100 //L
