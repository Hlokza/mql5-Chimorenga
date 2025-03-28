//+------------------------------------------------------------------+
//|                                Hlokza_MA_SeparateWindow_Test.mq5 |
//|                              Copyright 2024, Lehlohonolo Mosoang |
//|                                           lehlohonolomosoang.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, Lehlohonolo Mosoang"
#property link      "lehlohonolomosoang.com"
#property version   "1.00"
#property indicator_separate_window
#include <Hlokza_MA.mqh>
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+


#property indicator_buffers 2
#property indicator_plots   2

//--- plot VolumeSMA
#property indicator_label1  "Hlokza sma"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrMediumSpringGreen
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1
/*
#property indicator_label2  "Hlokza sma2"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrYellow
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1*/

double sma_Hlokza_Buffer[], sma_Hlokza_10_Buffer[], sma_mq5_Buffer[] ;
double close_values[];

CMovingAverage ma1;
CMovingAverage ma2;

input int               ma_length  =  10;          // MA Length
input int               smooth= 0;                 // MA Sooth
input MA_MODES          ma_type = Simple;          // Main Smooth 
input MA_MODES          ma_type_smooth = Simple;   // Sub Smooth
input Price_or_Volume   source = Close;            //Source

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
SetIndexBuffer(0,sma_Hlokza_10_Buffer,INDICATOR_DATA);
//SetIndexBuffer(1,sma_Hlokza_Buffer,INDICATOR_DATA);
   
 
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
   
 //ma1.Init(rates_total,prev_calculated);
 //ma1.get_Simple_MA(sma_Hlokza_10_Buffer,10, rates_total,prev_calculated);
 


  ma1.get_Simple_MA(sma_Hlokza_10_Buffer,ma_length,rates_total,prev_calculated, smooth, ma_type, source, ma_type_smooth);
  //ma1.get_Simple_MA(sma_Hlokza_10_Buffer,10,rates_total,prev_calculated, 0, Simple, Simple);
 

   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
