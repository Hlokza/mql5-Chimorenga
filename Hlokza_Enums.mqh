//+------------------------------------------------------------------+
//|                                                 Hlokza_Enums.mqh |
//|                              Copyright 2024, Lehlohonolo Mosoang |
//|                                           lehlohonolomosoang.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, Lehlohonolo Mosoang"
#property link      "lehlohonolomosoang.com"
//+------------------------------------------------------------------+
//| defines                                                          |
//+------------------------------------------------------------------+
// #define MacrosHello   "Hello, world!"
// #define MacrosYear    2010
//+------------------------------------------------------------------+
//| DLL imports                                                      |
//+------------------------------------------------------------------+
// #import "user32.dll"
//   int      SendMessageA(int hWnd,int Msg,int wParam,int lParam);
// #import "my_expert.dll"
//   int      ExpertRecalculate(int wParam,int lParam);
// #import
//+------------------------------------------------------------------+
//| EX5 imports                                                      |
//+------------------------------------------------------------------+
// #import "stdlib.ex5"
//   string ErrorDescription(int error_code);
// #import
//+------------------------------------------------------------------+

enum MA_MODES
  {
   Simple,       // Simple Moving Average (SMA)
   Exponential,  // Exponential Moving Average (EMA)
   Weighted     // Weighted Moving Average (WMA)
   //Smoothed,     // Smoothed Moving Average (SMMA)
   //Hull,         // Hull Moving Average (HMA)
   //Kaufman,      // Kaufman Adaptive Moving Average (KAMA)
   //Triangular,   // Triangular Moving Average (TMA)
   //DoubleEMA,    // Double Exponential Moving Average (DEMA)
   //TripleEMA,    // Triple Exponential Moving Average (TEMA)
   //LinearRegression, // Linear Regression Moving Average (LSMA/LRMA)
   //VWMA,         // Volume Weighted Moving Average (VWMA)
   //ALMA          // Arnaud Legoux Moving Average (ALMA)
  };
  
enum Price_or_Volume
  {
  //OPEN,
  Close,
  //High,
  //Low,
  Volume
  };