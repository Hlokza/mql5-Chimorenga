//+------------------------------------------------------------------+
//|                                                    Hlokza_MA.mqh |
//|                              Copyright 2024, Lehlohonolo Mosoang |
//|                                           lehlohonolomosoang.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, Lehlohonolo Mosoang"
#property link      "lehlohonolomosoang.com"
#include <Hlokza_Enums.mqh>
#include <Hlokza_ta.mqh>
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


class CMovingAverage
{
   private:
      double close_values[], simple_ma[];
      int rates_total;
      int prev_calculated;
      bool first_calculation;

   public:
      void Init(int rates_total_inp, int prev_calculated_inp, Price_or_Volume price)
      {
         rates_total = rates_total_inp;
         prev_calculated = prev_calculated_inp;
         ArraySetAsSeries(close_values,false);
         ArrayResize(close_values,rates_total);
         
         if(price == Close)
           {
               CopyClose(_Symbol,PERIOD_CURRENT,0,rates_total,close_values);
           }
         else if(price == Volume)
                {
                 
                 CopyVolume(_Symbol,PERIOD_CURRENT,0,rates_total,close_values);
                }
         

         
         
         
      }
      
      /*void set_Simple_MA(int length_input, int rates_total_inp, int prev_calculated_inp)
         {
            Init(rates_total_inp,prev_calculated_inp);
            ArrayResize(simple_ma,rates_total);
            for(int i=length_input;i<rates_total;i++)
               {
            simple_ma[i+length_input-1] = SMA(close_values,length_input,i);
            }
         
         }*/
         
         
      void get_Simple_MA(double &simple_ma_Buffer[], int length_input, int rates_total_inp, int prev_calculated_inp, int smooth_length, MA_MODES main_SMA_type, Price_or_Volume price, MA_MODES sub_SMA_type = Simple )
         {  
            Init(rates_total_inp,prev_calculated_inp, price);
            ArrayResize(simple_ma_Buffer,rates_total);
            ArrayResize(simple_ma,rates_total);
            
            if(main_SMA_type == Simple)
              {
                  if(smooth_length > 0)
                    {
                     for(int i=length_input;i<rates_total;i++)
                        {
                           simple_ma[i]  = SMA(close_values,length_input,i);
                        }
                        smooth_ma_func(simple_ma,smooth_length, sub_SMA_type,rates_total_inp, simple_ma_Buffer);
                        
                    }
                  else
                    {
                     for(int i=length_input;i<rates_total;i++)
                        {
                           simple_ma_Buffer[i] = SMA(close_values,length_input,i);
                        }
                    }
               
              }
              else if(main_SMA_type == Exponential)
                     {
                        if(smooth_length > 0)
                          {
                           for(int i=length_input;i<rates_total;i++)
                              {
                                 simple_ma[i]  = EMA(close_values,length_input,i);
                              }
                          smooth_ma_func(simple_ma,smooth_length, sub_SMA_type,rates_total_inp, simple_ma_Buffer);
                              
                          }
                        else
                          {
                           for(int i=length_input;i<rates_total;i++)
                              {
                                 simple_ma_Buffer[i] = EMA(close_values,length_input,i);
                              }
                          }
                      
                     }
              else if(main_SMA_type == Weighted)
                    {
                        if(smooth_length > 0)
                          {
                           for(int i=length_input;i<rates_total;i++)
                              {
                                 simple_ma[i]  = WMA(close_values,length_input,i);
                              }
                              
                          smooth_ma_func(simple_ma,smooth_length, sub_SMA_type,rates_total_inp, simple_ma_Buffer);
                              
                          }
                        else
                          {
                           for(int i=length_input;i<rates_total;i++)
                              {
                                 simple_ma_Buffer[i] = WMA(close_values,length_input,i);
                              }
                          }                     
                    }
            
            
            
         }

   
   /*void Calculate (
   string               symbol,            // symbol name
   ENUM_TIMEFRAMES      timeFrame,            // period
   int                  length,         // averaging period
   MA_MODES             ma_type,         // smoothing type
   Price_or_Volume      source,      // type of price or handle
   int                  total_rates,
   int                  previously_calculated,
   double               &ma_buffer[]
   )
   
   {

   

   }*/
};



void smooth_ma_func(const double &source_ma[], int smooth_length, MA_MODES sub_SMA_type, int rates_total, double &target_ma[])
   {
      if(sub_SMA_type == Exponential)
        {
            for(int i=smooth_length;i<rates_total;i++)
               {
                  target_ma[i]  = EMA(source_ma,smooth_length,i);
               }
        }
      else if(sub_SMA_type == Weighted)
             {
               for(int i=smooth_length;i<rates_total;i++)
                  {
                     target_ma[i] = WMA(source_ma,smooth_length,i);
                  }
             }
      else if(sub_SMA_type == Simple)
            
        {
            for(int i=smooth_length;i<rates_total;i++)
               {
                  target_ma[i]  = SMA(source_ma,smooth_length,i);
               }
        }
   }
