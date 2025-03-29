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
         
         
      void get_Simple_MA(double &simple_ma_Buffer[], double &simple_osscilator_Buffer[], int length_input, int rates_total_inp, int prev_calculated_inp, int smooth_length, MA_MODES main_SMA_type, Price_or_Volume price, MA_MODES sub_SMA_type = Simple )
         {  
            //double simple_ma[];
            double high_ma[], low_ma[];
            double high_val_temp, low_val_temp;
            int count;
            
            Init(rates_total_inp,prev_calculated_inp, price);
            ArrayResize(simple_ma_Buffer,rates_total);
            ArrayResize(simple_ma,rates_total);
            ArrayResize(high_ma,rates_total);
            ArrayResize(low_ma,rates_total);
            
            high_val_temp = 0;
            low_val_temp = 0;
            
            double high_next_val_temp = 0;
            double low_next_val_temp = 0;
            int count_high = 0;
            int count_low = 0;
            //I'm bringing them all togather at once
            //==============================
            
              
              
              
            if(smooth_length > 0)
              {
               for(int i=length_input;i<rates_total;i++)
                  {
                     simple_ma[i]  = run_moving_average_type(close_values,length_input,i, main_SMA_type);
                  }
                  smooth_ma_func(simple_ma,smooth_length, sub_SMA_type,rates_total_inp, simple_ma_Buffer);
                  
              }
            else
              {
               for(int i=length_input;i<rates_total;i++)
                  {
                     simple_ma_Buffer[i] = run_moving_average_type(close_values,length_input,i, main_SMA_type);
                     
                     //Create stochastic
                     if(i > length_input)
                       {
                           high_val_temp = simple_ma_Buffer[i] > high_val_temp ? simple_ma_Buffer[i] : high_val_temp ;
                           low_val_temp = (simple_ma_Buffer[i] < low_val_temp) || low_val_temp == 0 ? simple_ma_Buffer[i] : low_val_temp ;
                           
                           if(count_high > 0)//count > 0
                             {
                                 high_next_val_temp = simple_ma_Buffer[i] > high_next_val_temp ? simple_ma_Buffer[i] : high_next_val_temp ;
                                 low_next_val_temp = (simple_ma_Buffer[i] < low_next_val_temp) || low_val_temp == 0  ? simple_ma_Buffer[i] : low_next_val_temp ;
                             }
                           
                           
                           high_ma[i] = high_val_temp;
                           //simple_osscilator_Buffer[i] = high_val_temp; //for testing high an low lines
                           low_ma[i] = low_val_temp;
                           simple_osscilator_Buffer[i] = (simple_ma_Buffer[i]-low_ma[i])/(high_ma[i]-low_ma[i]) *100;
                           count_high = count_high + 1;
                           count_low = count_low +1;
                       }
                       
                      //reset count
                      if(count_high == length_input || high_val_temp == high_next_val_temp)
                        {
                         
                         if(count_high == length_input)
                           {
                            count_high = 0;
                           }
                         high_val_temp = high_next_val_temp;
                         high_next_val_temp = simple_ma_Buffer[i];
                        }
                        
                      if(count_low == length_input || low_val_temp == low_next_val_temp)
                        {
                         
                         if(count_low == length_input)
                           {
                              count_low = 0;
                           }
                         low_val_temp = low_next_val_temp;
                         low_next_val_temp = simple_ma_Buffer[i];
                        }
                     
                  }
                  
              }
            //==============================
            
            
            
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
   
  
double run_moving_average_type(const double &price[], int len, int shift, MA_MODES ma_type)
   {
      //double ma
      if(ma_type == Simple)
        {
         return SMA(price,len,shift);
        }
        
      if(ma_type == Exponential)
        {
         return EMA(price,len,shift);
        }
      
      if(ma_type == Weighted)
        {
         return WMA(price,len,shift);
        }
        
      return 0;
   }