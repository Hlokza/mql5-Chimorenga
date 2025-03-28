//+------------------------------------------------------------------+
//|                                                ControllLines.mq5 |
//|                              Copyright 2024, Lehlohonolo Mosoang |
//|                                           lehlohonolomosoang.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2024, Lehlohonolo Mosoang"
#property link      "lehlohonolomosoang.com"
#property version   "1.00"
//#property indicator_chart_window

const color asset_temperature_color_red = C'100,195, 29, 101';

#property indicator_chart_window
#property indicator_buffers 47
#property indicator_plots   47

//=========================================== Current

//--- Control Line Current
#property indicator_label1  "Control Line (LTF)"
#property indicator_type1   DRAW_LINE
#property indicator_color1  clrWhite
#property indicator_style1  STYLE_SOLID
#property indicator_width1  1

//--- Control Line Current Up
#property indicator_label2  "Control Line (LTF UP)"
#property indicator_type2   DRAW_LINE
#property indicator_color2  clrBlue
#property indicator_style2  STYLE_SOLID
#property indicator_width2  1

//--- Control Line Current Down
#property indicator_label3  "Control Line (LTF Down)"
#property indicator_type3  DRAW_LINE
#property indicator_color3  C'195, 29, 101'
#property indicator_style3  STYLE_SOLID
#property indicator_width3  1

//--- Control Line Current HTF
#property indicator_label4  "Control Line (HTF)"
#property indicator_type4    DRAW_LINE
#property indicator_color4  clrYellow
#property indicator_style4  STYLE_SOLID
#property indicator_width4  2

//--- Control Line Current HTF up
#property indicator_label5  "Control Line (HTF Up)"
#property indicator_type5    DRAW_LINE
#property indicator_color5  clrBlue
#property indicator_style5  STYLE_SOLID
#property indicator_width5  2

//--- Control Line Current HTF down
#property indicator_label6  "Control Line (HTF Down)"
#property indicator_type6    DRAW_LINE
#property indicator_color6  C'195, 29, 101'
#property indicator_style6  STYLE_SOLID
#property indicator_width6  2

//--- Control Line Current 30(HTF)
#property indicator_label7  "Control Line 30(HTF)"
#property indicator_type7   DRAW_LINE
#property indicator_color7  clrDarkOrange
#property indicator_style7  STYLE_SOLID
#property indicator_width7  3

//--- Control Line Current 30(HTF) Up
#property indicator_label8  "Control Line 30(HTF Up)"
#property indicator_type8   DRAW_LINE
#property indicator_color8  clrBlue
#property indicator_style8  STYLE_SOLID
#property indicator_width8  3

//--- Control Line Current 30(HTF) Down
#property indicator_label9  "Control Line 30(HTF Down)"
#property indicator_type9   DRAW_LINE
#property indicator_color9  C'195, 29, 101'
#property indicator_style9  STYLE_SOLID
#property indicator_width9  3

//=========================================== Current End

//=========================================== 3 bars high

//--- Control Line Current
#property indicator_label10  "Control Line (LTF)"
#property indicator_type10   DRAW_LINE
#property indicator_color10  clrYellow
#property indicator_style10  STYLE_SOLID
#property indicator_width10  1

//--- Control Line Current Up
#property indicator_label11  "Control Line (LTF UP)"
#property indicator_type11   DRAW_LINE
#property indicator_color11  clrBlue
#property indicator_style11  STYLE_SOLID
#property indicator_width11  1

//--- Control Line Current Down
#property indicator_label12  "Control Line (LTF Down)"
#property indicator_type12  DRAW_LINE
#property indicator_color12  C'195, 29, 101'
#property indicator_style12  STYLE_SOLID
#property indicator_width12  1

//--- Control Line Current HTF
#property indicator_label13  "Control Line (HTF)"
#property indicator_type13    DRAW_LINE
#property indicator_color13  clrYellow
#property indicator_style13  STYLE_SOLID
#property indicator_width13  2

//--- Control Line Current HTF up
#property indicator_label14  "Control Line (HTF Up)"
#property indicator_type14    DRAW_LINE
#property indicator_color14  clrBlue
#property indicator_style14  STYLE_SOLID
#property indicator_width14  2

//--- Control Line Current HTF down
#property indicator_label15  "Control Line (HTF Down)"
#property indicator_type15    DRAW_LINE
#property indicator_color15  C'195, 29, 101'
#property indicator_style15  STYLE_SOLID
#property indicator_width15  2

//--- Control Line Current 30(HTF)
#property indicator_label16  "Control Line 30(HTF)"
#property indicator_type16   DRAW_LINE
#property indicator_color16  clrDarkOrange
#property indicator_style16  STYLE_SOLID
#property indicator_width16  3

//--- Control Line Current 30(HTF) Up
#property indicator_label17  "Control Line 30(HTF Up)"
#property indicator_type17   DRAW_LINE
#property indicator_color17  clrBlue
#property indicator_style17  STYLE_SOLID
#property indicator_width17  3

//--- Control Line Current 30(HTF) Down
#property indicator_label18  "Control Line 30(HTF Down)"
#property indicator_type18   DRAW_LINE
#property indicator_color18  C'195, 29, 101'
#property indicator_style18  STYLE_SOLID
#property indicator_width18  3

//=========================================== 3 bars high End

//=========================================== 5 bars high

//--- Control Line Current
#property indicator_label19  "Control Line (LTF)"
#property indicator_type19   DRAW_LINE
#property indicator_color19  clrYellow
#property indicator_style19  STYLE_SOLID
#property indicator_width19  1

//--- Control Line Current Up
#property indicator_label20  "Control Line (LTF UP)"
#property indicator_type20   DRAW_LINE
#property indicator_color20  clrBlue
#property indicator_style20  STYLE_SOLID
#property indicator_width20  1

//--- Control Line Current Down
#property indicator_label21  "Control Line (LTF Down)"
#property indicator_type21  DRAW_LINE
#property indicator_color21  C'195, 29, 101'
#property indicator_style21  STYLE_SOLID
#property indicator_width21  1

//--- Control Line Current HTF
#property indicator_label22  "Control Line (HTF)"
#property indicator_type22    DRAW_LINE
#property indicator_color22  clrYellow
#property indicator_style22  STYLE_SOLID
#property indicator_width22  2

//--- Control Line Current HTF up
#property indicator_label23  "Control Line (HTF Up)"
#property indicator_type23    DRAW_LINE
#property indicator_color23  clrBlue
#property indicator_style23  STYLE_SOLID
#property indicator_width23  2

//--- Control Line Current HTF down
#property indicator_label24  "Control Line (HTF Down)"
#property indicator_type24    DRAW_LINE
#property indicator_color24  C'195, 29, 101'
#property indicator_style24  STYLE_SOLID
#property indicator_width24  2

//--- Control Line Current 30(HTF)
#property indicator_label25  "Control Line 30(HTF)"
#property indicator_type25   DRAW_LINE
#property indicator_color25  clrDarkOrange
#property indicator_style25  STYLE_SOLID
#property indicator_width25  3

//--- Control Line Current 30(HTF) Up
#property indicator_label26  "Control Line 30(HTF Up)"
#property indicator_type26   DRAW_LINE
#property indicator_color26  clrBlue
#property indicator_style26  STYLE_SOLID
#property indicator_width26  3

//--- Control Line Current 30(HTF) Down
#property indicator_label27  "Control Line 30(HTF Down)"
#property indicator_type27   DRAW_LINE
#property indicator_color27  C'195, 29, 101'
#property indicator_style27  STYLE_SOLID
#property indicator_width27  3

//=========================================== 5 bars high End


//=========================================== 10 bars high

//--- Control Line Current
#property indicator_label28  "Control Line (LTF)"
#property indicator_type28   DRAW_LINE
#property indicator_color28  clrYellow
#property indicator_style28  STYLE_SOLID
#property indicator_width28  1

//--- Control Line Current Up
#property indicator_label29  "Control Line (LTF UP)"
#property indicator_type29   DRAW_LINE
#property indicator_color29  clrBlue
#property indicator_style29  STYLE_SOLID
#property indicator_width29  1

//--- Control Line Current Down
#property indicator_label30  "Control Line (LTF Down)"
#property indicator_type30  DRAW_LINE
#property indicator_color30  C'195, 29, 101'
#property indicator_style30  STYLE_SOLID
#property indicator_width30  1

//--- Control Line Current HTF
#property indicator_label31  "Control Line (HTF)"
#property indicator_type31    DRAW_LINE
#property indicator_color31  clrYellow
#property indicator_style31  STYLE_SOLID
#property indicator_width31  2

//--- Control Line Current HTF up
#property indicator_label32  "Control Line (HTF Up)"
#property indicator_type32    DRAW_LINE
#property indicator_color32  clrBlue
#property indicator_style32  STYLE_SOLID
#property indicator_width32  2

//--- Control Line Current HTF down
#property indicator_label33  "Control Line (HTF Down)"
#property indicator_type33    DRAW_LINE
#property indicator_color33  C'195, 29, 101'
#property indicator_style33  STYLE_SOLID
#property indicator_width33  2

//--- Control Line Current 30(HTF)
#property indicator_label34  "Control Line 30(HTF)"
#property indicator_type34   DRAW_LINE
#property indicator_color34  clrDarkOrange
#property indicator_style34  STYLE_SOLID
#property indicator_width34  3

//--- Control Line Current 30(HTF) Up
#property indicator_label35  "Control Line 30(HTF Up)"
#property indicator_type35   DRAW_LINE
#property indicator_color35  clrBlue
#property indicator_style35  STYLE_SOLID
#property indicator_width35  3

//--- Control Line Current 30(HTF) Down
#property indicator_label36  "Control Line 30(HTF Down)"
#property indicator_type36   DRAW_LINE
#property indicator_color36  C'195, 29, 101'
#property indicator_style36  STYLE_SOLID
#property indicator_width36  3

//=========================================== 10 bars high End



//=========================================== Control Support and Resistence


//--- Control Resistence
#property indicator_label37  "Control Resistence "
#property indicator_type37  DRAW_LINE
#property indicator_color37  clrRed
#property indicator_style37  STYLE_SOLID
#property indicator_width37  3

//--- Control Support
#property indicator_label38  "Control Support "
#property indicator_type38  DRAW_LINE
#property indicator_color38  clrGreen
#property indicator_style38  STYLE_SOLID
#property indicator_width38  3

//=========================================== Control Support and Resistence End



//=========================================== Control Supper Lines

//--- Control Supper Line Current
#property indicator_label39  "Control Supper Line (LTF)"
#property indicator_type39   DRAW_LINE
#property indicator_color39  clrWhite
#property indicator_style39  STYLE_SOLID
#property indicator_width39  1

//--- Control Supper Line Current Up
#property indicator_label40  "Control Supper Line (LTF UP)"
#property indicator_type40   DRAW_LINE
#property indicator_color40  clrBlue
#property indicator_style40  STYLE_SOLID
#property indicator_width40  1

//--- Control Supper Line Current Down
#property indicator_label41  "Control Supper Line (LTF Down)"
#property indicator_type41  DRAW_LINE
#property indicator_color41  C'195, 29, 101'
#property indicator_style41  STYLE_SOLID
#property indicator_width41  1

//--- Control Supper Line Current HTF
#property indicator_label42  "Control Supper Line (HTF)"
#property indicator_type42    DRAW_LINE
#property indicator_color42  clrYellow
#property indicator_style42  STYLE_SOLID
#property indicator_width42  2

//--- Control Supper Line HTF up
#property indicator_label43  "Control Supper Line (HTF Up)"
#property indicator_type43    DRAW_LINE
#property indicator_color43  clrBlue
#property indicator_style43  STYLE_SOLID
#property indicator_width43  2

//--- Control Supper Line HTF down
#property indicator_label44  "Control Supper Line (HTF Down)"
#property indicator_type44    DRAW_LINE
#property indicator_color44  C'195, 29, 101'
#property indicator_style44  STYLE_SOLID
#property indicator_width44  2

//--- Control Supper Line 30(HTF)
#property indicator_label45  "Control Supper Line 30(HTF)"
#property indicator_type45   DRAW_LINE
#property indicator_color45  clrDarkOrange
#property indicator_style45  STYLE_SOLID
#property indicator_width45  3

//--- Control Supper Line 30(HTF) Up
#property indicator_label46  "Control Supper Line 30(HTF Up)"
#property indicator_type46   DRAW_LINE
#property indicator_color46  clrBlue
#property indicator_style46  STYLE_SOLID
#property indicator_width46  3

//--- Control Supper Line  30(HTF) Down
#property indicator_label47  "Control Supper Line 30(HTF Down)"
#property indicator_type47   DRAW_LINE
#property indicator_color47  C'195, 29, 101'
#property indicator_style47  STYLE_SOLID
#property indicator_width47  3






//+------------------------------------------------------------------+
//| Enumeration of the methods of handle creation                    |
//+------------------------------------------------------------------+
// enum Creation
//   {
//    Call_iControlLine,       // use iMA
//    Call_IndicatorCreate    // use IndicatorCreate
//   };
//--- input parameters


input string               symbol                              =" ";                // (All) symbol 
input ENUM_MA_METHOD       control_line_input_method           = MODE_LWMA;         // (All) type of smoothing
input ENUM_APPLIED_PRICE   control_line_input_applied_price    = PRICE_CLOSE;       // (All) type of price
input bool show_supper_control_lines                           = true;              // Show Supper Control

//============== Current inputs ======================
input int                  control_line_input                  =  20;               // (Current) Control Length
input int                  control_line_input_smooth           =  2;                // (Current) Conrol Smooth
input int                  control_line_input_shift            =  0;                // (Current) Conrol Shift

// Control Line HTF
input int                  control_line_input_HTF              =  180;               // (Current HTF) Control Length                
input int                  control_line_input_HTF_smooth       =  3;                // (Current HTF) Conrol Smooth
input int                  control_line_input_shift_HTF        =  0;                // (Current HTF) Conrol Shift
//input int                  higher_time_frame                   =  10;                // (Current HTF) Conrol Shift 180                  

// Control Line HTF 30
input int                  control_line_input_30_HTF           =  1200;               // (Current 30 HTF) Control Length                 
input int                  control_line_input_30_HTF_smooth    =  3;                // (Current 30 HTF) Conrol Smooth
input int                  control_line_input_shift_30_HTF     =  0;                // (Current 30 HTF) Conrol Shift  
//input int                  higher_time_frame_30                =  60;               // (Current 30 HTF) Conrol Shift   1200              

input ENUM_TIMEFRAMES      control_line_input_period           =  PERIOD_CURRENT;   // (Current All) timeframe
input bool                 show_current_control_lines          =  false;             // (Current All) Show Current lines

//============== 3 bars high inputs ======================
int                  htf_3_control_line_input                  =  control_line_input; 
int                  htf_3_control_line_input_smooth           =  control_line_input_smooth;
int                  htf_3_control_line_input_shift            =  control_line_input_shift;   

// Control Line HTF
int                  htf_3_control_line_input_HTF              =  control_line_input_HTF;                 
int                  htf_3_control_line_input_HTF_smooth       =  control_line_input_HTF_smooth;
int                  htf_3_control_line_input_shift_HTF        =  control_line_input_shift_HTF; 
//int                  htf_3_higher_time_frame                   =  higher_time_frame;                     

// Control Line HTF 30
int                  htf_3_control_line_input_30_HTF           =  control_line_input_30_HTF;                   
int                  htf_3_control_line_input_30_HTF_smooth    =  control_line_input_30_HTF_smooth; 
int                  htf_3_control_line_input_shift_30_HTF     =  control_line_input_shift_30_HTF; 
//int                  htf_3_higher_time_frame_30                =  higher_time_frame_30;               

input ENUM_TIMEFRAMES      htf_3_control_line_input_period           =  PERIOD_M3;   // (3 B Current All) timeframe
input bool                 htf_3_show_current_control_lines          =  false;             // (3 B Current All) Show Current lines

//============== 5 bars high inputs ======================
int                  htf_5_control_line_input                  =  control_line_input; 
int                  htf_5_control_line_input_smooth           =  control_line_input_smooth;
int                  htf_5_control_line_input_shift            =  control_line_input_shift;   

// Control Line HTF
int                  htf_5_control_line_input_HTF              =  control_line_input_HTF;                 
int                  htf_5_control_line_input_HTF_smooth       =  control_line_input_HTF_smooth;
int                  htf_5_control_line_input_shift_HTF        =  control_line_input_shift_HTF; 
//int                  htf_5_higher_time_frame                   =  higher_time_frame;                     

// Control Line HTF 30
int                  htf_5_control_line_input_30_HTF           =  control_line_input_30_HTF;                   
int                  htf_5_control_line_input_30_HTF_smooth    =  control_line_input_30_HTF_smooth; 
int                  htf_5_control_line_input_shift_30_HTF     =  control_line_input_shift_30_HTF; 
//int                  htf_5_higher_time_frame_30                =  higher_time_frame_30;               

input ENUM_TIMEFRAMES      htf_5_control_line_input_period           =  PERIOD_M5;   // (5 B Current All) timeframe
input bool                 htf_5_show_current_control_lines          =  false;             // (5 B Current All) Show Current lines

//============== 10 bars high inputs ======================
int                  htf_10_control_line_input                  =  control_line_input; 
int                  htf_10_control_line_input_smooth           =  control_line_input_smooth;
int                  htf_10_control_line_input_shift            =  control_line_input_shift;   

// Control Line HTF
int                  htf_10_control_line_input_HTF              =  control_line_input_HTF;                 
int                  htf_10_control_line_input_HTF_smooth       =  control_line_input_HTF_smooth;
int                  htf_10_control_line_input_shift_HTF        =  control_line_input_shift_HTF; 
//int                  htf_10_higher_time_frame                   =  higher_time_frame ;                     

// Control Line HTF 30
int                  htf_10_control_line_input_30_HTF           =  control_line_input_30_HTF;                   
int                  htf_10_control_line_input_30_HTF_smooth    =  control_line_input_30_HTF_smooth; 
int                  htf_10_control_line_input_shift_30_HTF     =  control_line_input_shift_30_HTF; 
//int                  htf_10_higher_time_frame_30                =  higher_time_frame_30;               

input ENUM_TIMEFRAMES      htf_10_control_line_input_period           =  PERIOD_M10;   // (10 B Current All) timeframe
input bool                 htf_10_show_current_control_lines          =  false;             // (10 B Current All) Show Current lines


//========= Controll line supper line Weights

//===== Inputs: Fast Weights ===== (x * control_weight_input) + (y * control_weight_HTF_3_input) + (z * control_weight_HTF_5_input) + (g * control_weight_HTF_10_input)

input double         control_weight_input                = 0.8;             // Current fast weight

input double         control_weight_HTF_3_input          = 0.1;             // HTF 3 fast weight

input double         control_weight_HTF_5_input          = 0.05;             // HTF 5 fast weight

input double         control_weight_HTF_10_input         = 0.05;             // HTF 10 fast weight



//===== Inputs: Mid Weights ===== (x * control_weight_input_HTF) + (y * control_weight_HTF_3_input_HTF) + (z * control_weight_HTF_5_input_HTF) + (g * control_weight_HTF_10_input_HTF)

input double         control_weight_input_HTF            = 0.20;             // Current mid HTF weight

input double         control_weight_HTF_3_input_HTF      = 0.7;             // HTF 3 mid weight

input double         control_weight_HTF_5_input_HTF      = 0.05;             // HTF 5 mid weight

input double         control_weight_HTF_10_input_HTF     = 0.05;             // HTF 10 mid weight



//===== Inputs: Long Weights ===== (x * control_weight_input_30_HTF) + (y * control_weight_HTF_3_input_30_HTF) + (z * control_weight_HTF_5_input_30_HTF) + (g * control_weight_HTF_10_input_30_HTF)

input double         control_weight_input_30_HTF         = 0.05;             // Current long HTF weight

input double         control_weight_HTF_3_input_30_HTF   = 0.05;             // HTF 3 long weight

input double         control_weight_HTF_5_input_30_HTF   = 0.1;             // HTF 5 long weight

input double         control_weight_HTF_10_input_30_HTF  = 0.8;             // HTF 10 long weight



//========= Controll line supper line Weights End



//--- Current handle and Buffer
double ControlLine_Buffer[], ControlLine_Buffer_up[], ControlLine_Buffer_down[], ControlLine_Buffer_HTF[], ControlLine_Buffer_HTF_up[], ControlLine_Buffer_HTF_down[], ControlLine_Buffer_30_HTF[], ControlLine_Buffer_30_HTF_up[], ControlLine_Buffer_30_HTF_down[];
int    ControlLine_handle, ControlLine_handle_HTF, ControlLine_handle_30_HTF;

//--- handle and Buffer 3 bars High
double htf_3_ControlLine_Buffer[], htf_3_ControlLine_Buffer_up[], htf_3_ControlLine_Buffer_down[], htf_3_ControlLine_Buffer_HTF[], htf_3_ControlLine_Buffer_HTF_up[], htf_3_ControlLine_Buffer_HTF_down[], htf_3_ControlLine_Buffer_30_HTF[], htf_3_ControlLine_Buffer_30_HTF_up[], htf_3_ControlLine_Buffer_30_HTF_down[];
int    htf_3_ControlLine_handle, htf_3_ControlLine_handle_HTF, htf_3_ControlLine_handle_30_HTF;

//--- handle and Buffer 5 bars High
double htf_5_ControlLine_Buffer[], htf_5_ControlLine_Buffer_up[], htf_5_ControlLine_Buffer_down[], htf_5_ControlLine_Buffer_HTF[], htf_5_ControlLine_Buffer_HTF_up[], htf_5_ControlLine_Buffer_HTF_down[], htf_5_ControlLine_Buffer_30_HTF[], htf_5_ControlLine_Buffer_30_HTF_up[], htf_5_ControlLine_Buffer_30_HTF_down[];
int    htf_5_ControlLine_handle, htf_5_ControlLine_handle_HTF, htf_5_ControlLine_handle_30_HTF;

//--- handle and Buffer 5 bars High
double htf_10_ControlLine_Buffer[], htf_10_ControlLine_Buffer_up[], htf_10_ControlLine_Buffer_down[], htf_10_ControlLine_Buffer_HTF[], htf_10_ControlLine_Buffer_HTF_up[], htf_10_ControlLine_Buffer_HTF_down[], htf_10_ControlLine_Buffer_30_HTF[], htf_10_ControlLine_Buffer_30_HTF_up[], htf_10_ControlLine_Buffer_30_HTF_down[];
int    htf_10_ControlLine_handle, htf_10_ControlLine_handle_HTF, htf_10_ControlLine_handle_30_HTF;


//--- Support and Resistence
double control_resistence_Buffer[], control_support_Buffer[];


//========== Control Supper Line Buffers
double ControlLine_supperLine_Buffer[], ControlLine_supperLine_Buffer_up[], ControlLine_supperLine_Buffer_down[];
double ControlLine_Buffer_supperLine_HTF[], ControlLine_Buffer_supperLine_HTF_up[], ControlLine_Buffer_supperLine_HTF_down[];
double ControlLine_supperLine_Buffer_30_HTF[], ControlLine_supperLine_Buffer_30_HTF_up[], ControlLine_supperLine_Buffer_30_HTF_down[]; 



string name=symbol;
string short_name;

//--- we will keep the number of values in the Moving Average indicator
int    bars_calculated=0;



//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- assignment of array to indicator buffer
   SetIndexBuffer(0,ControlLine_Buffer,INDICATOR_DATA);
   SetIndexBuffer(1,ControlLine_Buffer_up,INDICATOR_DATA);
   SetIndexBuffer(2,ControlLine_Buffer_down,INDICATOR_DATA);
   
   
   SetIndexBuffer(3,ControlLine_Buffer_HTF,INDICATOR_DATA);
   SetIndexBuffer(4,ControlLine_Buffer_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(5,ControlLine_Buffer_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(6,ControlLine_Buffer_30_HTF,INDICATOR_DATA);
   SetIndexBuffer(7,ControlLine_Buffer_30_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(8,ControlLine_Buffer_30_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(9,htf_3_ControlLine_Buffer,INDICATOR_DATA);
   SetIndexBuffer(10,htf_3_ControlLine_Buffer_up,INDICATOR_DATA);
   SetIndexBuffer(11,htf_3_ControlLine_Buffer_down,INDICATOR_DATA);
   
   
   SetIndexBuffer(12,htf_3_ControlLine_Buffer_HTF,INDICATOR_DATA);
   SetIndexBuffer(13,htf_3_ControlLine_Buffer_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(14,htf_3_ControlLine_Buffer_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(15,htf_3_ControlLine_Buffer_30_HTF,INDICATOR_DATA);
   SetIndexBuffer(16,htf_3_ControlLine_Buffer_30_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(17,htf_3_ControlLine_Buffer_30_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(18,htf_5_ControlLine_Buffer,INDICATOR_DATA);
   SetIndexBuffer(19,htf_5_ControlLine_Buffer_up,INDICATOR_DATA);
   SetIndexBuffer(20,htf_5_ControlLine_Buffer_down,INDICATOR_DATA);
   
   
   SetIndexBuffer(21,htf_5_ControlLine_Buffer_HTF,INDICATOR_DATA);
   SetIndexBuffer(22,htf_5_ControlLine_Buffer_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(23,htf_5_ControlLine_Buffer_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(24,htf_5_ControlLine_Buffer_30_HTF,INDICATOR_DATA);
   SetIndexBuffer(25,htf_5_ControlLine_Buffer_30_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(26,htf_5_ControlLine_Buffer_30_HTF_down,INDICATOR_DATA);
   
   
   SetIndexBuffer(27,htf_10_ControlLine_Buffer,INDICATOR_DATA);
   SetIndexBuffer(28,htf_10_ControlLine_Buffer_up,INDICATOR_DATA);
   SetIndexBuffer(29,htf_10_ControlLine_Buffer_down,INDICATOR_DATA);
   
   
   SetIndexBuffer(30,htf_10_ControlLine_Buffer_HTF,INDICATOR_DATA);
   SetIndexBuffer(31,htf_10_ControlLine_Buffer_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(32,htf_10_ControlLine_Buffer_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(33,htf_10_ControlLine_Buffer_30_HTF,INDICATOR_DATA);
   SetIndexBuffer(34,htf_10_ControlLine_Buffer_30_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(35,htf_10_ControlLine_Buffer_30_HTF_down,INDICATOR_DATA);
   
   SetIndexBuffer(36,control_resistence_Buffer,INDICATOR_DATA); // Resistence
   SetIndexBuffer(37,control_support_Buffer,INDICATOR_DATA); // Support
   
   SetIndexBuffer(38,ControlLine_supperLine_Buffer,INDICATOR_DATA); 
   SetIndexBuffer(39,ControlLine_supperLine_Buffer_up,INDICATOR_DATA); 
   SetIndexBuffer(40,ControlLine_supperLine_Buffer_down,INDICATOR_DATA); 
   SetIndexBuffer(41,ControlLine_Buffer_supperLine_HTF,INDICATOR_DATA);
   SetIndexBuffer(42,ControlLine_Buffer_supperLine_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(43,ControlLine_Buffer_supperLine_HTF_down,INDICATOR_DATA);
   SetIndexBuffer(44,ControlLine_supperLine_Buffer_30_HTF,INDICATOR_DATA);
   SetIndexBuffer(45,ControlLine_supperLine_Buffer_30_HTF_up,INDICATOR_DATA);
   SetIndexBuffer(46,ControlLine_supperLine_Buffer_30_HTF_down,INDICATOR_DATA);
   
   
   if(show_current_control_lines)
     {
       PlotIndexSetInteger(0, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(1, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(2, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(3, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(4, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(5, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(6, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(7, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(8, PLOT_DRAW_TYPE, DRAW_LINE);
     }
   else
     {
       PlotIndexSetInteger(0, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(1, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(2, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(3, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(4, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(5, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(6, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(7, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(8, PLOT_DRAW_TYPE, DRAW_NONE);
     }
     
   if(htf_3_show_current_control_lines)
     {
       PlotIndexSetInteger(9, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(10, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(11, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(12, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(13, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(14, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(15, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(16, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(17, PLOT_DRAW_TYPE, DRAW_LINE);
     }
   else
     {
       PlotIndexSetInteger(9, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(10, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(11, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(12, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(13, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(14, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(15, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(16, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(17, PLOT_DRAW_TYPE, DRAW_NONE);
     }
     
   if(htf_5_show_current_control_lines)
     {
       PlotIndexSetInteger(18, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(19, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(20, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(21, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(22, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(23, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(24, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(25, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(26, PLOT_DRAW_TYPE, DRAW_LINE);
     }
   else
     {
       PlotIndexSetInteger(18, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(19, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(20, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(21, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(22, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(23, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(24, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(25, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(26, PLOT_DRAW_TYPE, DRAW_NONE);
     }
     
     
   if(htf_10_show_current_control_lines)
     {
       PlotIndexSetInteger(27, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(28, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(29, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(30, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(31, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(32, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(33, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(34, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(35, PLOT_DRAW_TYPE, DRAW_LINE);
     }
   else
     {
       PlotIndexSetInteger(27, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(28, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(29, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(30, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(31, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(32, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(33, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(34, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(35, PLOT_DRAW_TYPE, DRAW_NONE);
     }
     
   if(show_supper_control_lines)
     {
       PlotIndexSetInteger(38, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(39, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(40, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(41, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(42, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(43, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(44, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(45, PLOT_DRAW_TYPE, DRAW_LINE);
       PlotIndexSetInteger(46, PLOT_DRAW_TYPE, DRAW_LINE);
      
     }
   else
     {
       PlotIndexSetInteger(38, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(39, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(40, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(41, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(42, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(43, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(44, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(45, PLOT_DRAW_TYPE, DRAW_NONE);
       PlotIndexSetInteger(46, PLOT_DRAW_TYPE, DRAW_NONE);
      
     }
   
//--- set shift
   PlotIndexSetInteger(0,PLOT_SHIFT,control_line_input_shift);  
   PlotIndexSetInteger(1,PLOT_SHIFT,control_line_input_shift);
   PlotIndexSetInteger(2,PLOT_SHIFT,control_line_input_shift);
   
   PlotIndexSetInteger(3,PLOT_SHIFT,control_line_input_shift_HTF);
   PlotIndexSetInteger(4,PLOT_SHIFT,control_line_input_shift_HTF);
   PlotIndexSetInteger(5,PLOT_SHIFT,control_line_input_shift_HTF);
   
   PlotIndexSetInteger(6,PLOT_SHIFT,control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(7,PLOT_SHIFT,control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(8,PLOT_SHIFT,control_line_input_shift_30_HTF); 
   
   PlotIndexSetInteger(9,PLOT_SHIFT,htf_3_control_line_input_shift);  
   PlotIndexSetInteger(10,PLOT_SHIFT,htf_3_control_line_input_shift);
   PlotIndexSetInteger(11,PLOT_SHIFT,htf_3_control_line_input_shift);
   
   PlotIndexSetInteger(12,PLOT_SHIFT,htf_3_control_line_input_shift_HTF);
   PlotIndexSetInteger(13,PLOT_SHIFT,htf_3_control_line_input_shift_HTF);
   PlotIndexSetInteger(14,PLOT_SHIFT,htf_3_control_line_input_shift_HTF);
   
   PlotIndexSetInteger(15,PLOT_SHIFT,htf_3_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(16,PLOT_SHIFT,htf_3_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(17,PLOT_SHIFT,htf_3_control_line_input_shift_30_HTF);
   
   PlotIndexSetInteger(18,PLOT_SHIFT,htf_5_control_line_input_shift);  
   PlotIndexSetInteger(19,PLOT_SHIFT,htf_5_control_line_input_shift);
   PlotIndexSetInteger(20,PLOT_SHIFT,htf_5_control_line_input_shift);
   
   PlotIndexSetInteger(21,PLOT_SHIFT,htf_5_control_line_input_shift_HTF);
   PlotIndexSetInteger(22,PLOT_SHIFT,htf_5_control_line_input_shift_HTF);
   PlotIndexSetInteger(23,PLOT_SHIFT,htf_5_control_line_input_shift_HTF);
   
   PlotIndexSetInteger(24,PLOT_SHIFT,htf_5_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(25,PLOT_SHIFT,htf_5_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(26,PLOT_SHIFT,htf_5_control_line_input_shift_30_HTF);
   
   PlotIndexSetInteger(27,PLOT_SHIFT,htf_10_control_line_input_shift);  
   PlotIndexSetInteger(28,PLOT_SHIFT,htf_10_control_line_input_shift);
   PlotIndexSetInteger(29,PLOT_SHIFT,htf_10_control_line_input_shift);
   
   PlotIndexSetInteger(30,PLOT_SHIFT,htf_10_control_line_input_shift_HTF);
   PlotIndexSetInteger(31,PLOT_SHIFT,htf_10_control_line_input_shift_HTF);
   PlotIndexSetInteger(32,PLOT_SHIFT,htf_10_control_line_input_shift_HTF);
   
   PlotIndexSetInteger(33,PLOT_SHIFT,htf_10_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(34,PLOT_SHIFT,htf_10_control_line_input_shift_30_HTF); 
   PlotIndexSetInteger(35,PLOT_SHIFT,htf_10_control_line_input_shift_30_HTF);
   
   PlotIndexSetInteger(36,PLOT_SHIFT,0); // Support
   PlotIndexSetInteger(37,PLOT_SHIFT,0); // Resistence 
   
   PlotIndexSetInteger(38,PLOT_SHIFT,0);
   PlotIndexSetInteger(39,PLOT_SHIFT, 0);
   PlotIndexSetInteger(40,PLOT_SHIFT, 0);
   PlotIndexSetInteger(41,PLOT_SHIFT,0);
   PlotIndexSetInteger(42,PLOT_SHIFT, 0);
   PlotIndexSetInteger(43,PLOT_SHIFT, 0);
   PlotIndexSetInteger(44,PLOT_SHIFT,0);
   PlotIndexSetInteger(45,PLOT_SHIFT, 0);
   PlotIndexSetInteger(46,PLOT_SHIFT, 0);
    
//--- determine the symbol the indicator is drawn for  
   name=symbol;
//--- delete spaces to the right and to the left
   StringTrimRight(name);
   StringTrimLeft(name);
//--- if it results in zero length of the 'name' string
   if(StringLen(name)==0)
     {
      //--- take the symbol of the chart the indicator is attached to
      name=_Symbol;
     }
//--- create handle of the indicator
   //iControlLine_handle=iMA(name, control_line_input_period, control_line_input, control_line_input_shift, control_line_input_method, control_line_input_applied_price);
   
   //========= Current Handles
   ControlLine_handle        =  create_Ma_line(name, control_line_input_period, control_line_input, control_line_input_shift, control_line_input_method, control_line_input_applied_price, control_line_input_smooth);
   
   ControlLine_handle_HTF     =  create_Ma_line(name, control_line_input_period, control_line_input_HTF, control_line_input_shift_HTF, control_line_input_method, control_line_input_applied_price, control_line_input_HTF_smooth);
   
   ControlLine_handle_30_HTF  =  create_Ma_line(name, control_line_input_period, control_line_input_30_HTF, control_line_input_shift_30_HTF, control_line_input_method, control_line_input_applied_price, control_line_input_30_HTF_smooth);
   
   //========= 3 bars High Handles
   htf_3_ControlLine_handle        =  create_Ma_line(name, htf_3_control_line_input_period, htf_3_control_line_input, htf_3_control_line_input_shift, control_line_input_method, control_line_input_applied_price, htf_3_control_line_input_smooth);
   
   htf_3_ControlLine_handle_HTF     =  create_Ma_line(name, htf_3_control_line_input_period, htf_3_control_line_input_HTF, htf_3_control_line_input_shift_HTF, control_line_input_method, control_line_input_applied_price, htf_3_control_line_input_HTF_smooth);
   
   htf_3_ControlLine_handle_30_HTF  =  create_Ma_line(name, htf_3_control_line_input_period, htf_3_control_line_input_30_HTF, htf_3_control_line_input_shift_30_HTF, control_line_input_method, control_line_input_applied_price, htf_3_control_line_input_30_HTF_smooth);
   
   
   //========= 5 bars High Handles
   htf_5_ControlLine_handle        =  create_Ma_line(name, htf_5_control_line_input_period, htf_5_control_line_input, htf_5_control_line_input_shift, control_line_input_method, control_line_input_applied_price, htf_5_control_line_input_smooth);
   
   htf_5_ControlLine_handle_HTF     =  create_Ma_line(name, htf_5_control_line_input_period, htf_5_control_line_input_HTF, htf_5_control_line_input_shift_HTF, control_line_input_method, control_line_input_applied_price, htf_5_control_line_input_HTF_smooth);
   
   htf_5_ControlLine_handle_30_HTF  =  create_Ma_line(name, htf_5_control_line_input_period, htf_5_control_line_input_30_HTF, htf_5_control_line_input_shift_30_HTF, control_line_input_method, control_line_input_applied_price, htf_5_control_line_input_30_HTF_smooth);
   
   
   //========= 10 bars High Handles
   htf_10_ControlLine_handle        =  create_Ma_line(name, htf_10_control_line_input_period, htf_10_control_line_input, htf_10_control_line_input_shift, control_line_input_method, control_line_input_applied_price, htf_10_control_line_input_smooth);
   
   htf_10_ControlLine_handle_HTF     =  create_Ma_line(name, htf_10_control_line_input_period, htf_10_control_line_input_HTF, htf_10_control_line_input_shift_HTF, control_line_input_method, control_line_input_applied_price, htf_10_control_line_input_HTF_smooth);
   
   htf_10_ControlLine_handle_30_HTF  =  create_Ma_line(name, htf_10_control_line_input_period, htf_10_control_line_input_30_HTF, htf_10_control_line_input_shift_30_HTF, control_line_input_method, control_line_input_applied_price, htf_10_control_line_input_30_HTF_smooth);
   
   //============= High and Low Bands

   

//--- if the handle is not created
   if(ControlLine_handle==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
     
   if(ControlLine_handle_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }

     
   if(ControlLine_handle_30_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
     
//--- if 3 bars invalid Handle
   if(htf_3_ControlLine_handle==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_3_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
     
   if(htf_3_ControlLine_handle_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_3_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }

     
   if(htf_3_ControlLine_handle_30_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_3_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
//--- if 5 bars invalid Handle
   if(htf_5_ControlLine_handle==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_5_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
     
   if(htf_5_ControlLine_handle_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_5_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }

     
   if(htf_5_ControlLine_handle_30_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_5_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
//--- if 10 bars invalid Handle
   if(htf_10_ControlLine_handle==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_10_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }
     
     
   if(htf_10_ControlLine_handle_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_10_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }

     
   if(htf_10_ControlLine_handle_30_HTF==INVALID_HANDLE)
     {
      //--- tell about the failure and output the error code
      PrintFormat("Failed to create handle of the iMA indicator for the symbol %s/%s, error code %d",
                  name,
                  EnumToString(htf_10_control_line_input_period),
                  GetLastError());
      //--- the indicator is stopped early
      return(INIT_FAILED);
     }

     
//--- show the symbol/timeframe the Moving Average indicator is calculated for
   short_name=StringFormat("iControlLine(%s/%s, %d, %d, %s, %s)",name,EnumToString(control_line_input_period),
                           control_line_input_period, control_line_input_shift,EnumToString(control_line_input_method),EnumToString(control_line_input_applied_price));
   IndicatorSetString(INDICATOR_SHORTNAME,short_name);
//--- normal initialization of the indicator
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
//--- number of values copied from the iMA indicator
   int values_to_copy;
//--- determine the number of values calculated in the indicator
   int calculated=BarsCalculated(ControlLine_handle);
   if(calculated<=0)
     {
      PrintFormat("BarsCalculated() returned %d, error code %d",calculated,GetLastError());
      return(0);
     }
//--- if it is the first start of calculation of the indicator or if the number of values in the iMA indicator changed
//---or if it is necessary to calculated the indicator for two or more bars (it means something has changed in the price history)
   if(prev_calculated==0 || calculated!=bars_calculated || rates_total>prev_calculated+1)
     {
      //--- if the iMABuffer array is greater than the number of values in the iMA indicator for symbol/period, then we don't copy everything 
      //--- otherwise, we copy less than the size of indicator buffers
      if(calculated>rates_total) values_to_copy=rates_total;
      else                       values_to_copy=calculated;
     }
   else
     {
      //--- it means that it's not the first time of the indicator calculation, and since the last call of OnCalculate()
      //--- for calculation not more than one bar is added
      values_to_copy=(rates_total-prev_calculated)+1;
     }
//--- fill the iMABuffer array with values of the Moving Average indicator
//--- if FillArrayFromBuffer returns false, it means the information is nor ready yet, quit operation
   if(!FillArrayFromBuffer(ControlLine_Buffer,control_line_input_shift,ControlLine_handle,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, ControlLine_Buffer, ControlLine_Buffer_up, ControlLine_Buffer_down);
   
   if(!FillArrayFromBuffer(ControlLine_Buffer_HTF,control_line_input_shift_HTF,ControlLine_handle_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, ControlLine_Buffer_HTF, ControlLine_Buffer_HTF_up, ControlLine_Buffer_HTF_down);
   
   if(!FillArrayFromBuffer(ControlLine_Buffer_30_HTF,control_line_input_shift_30_HTF,ControlLine_handle_30_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, ControlLine_Buffer_30_HTF, ControlLine_Buffer_30_HTF_up, ControlLine_Buffer_30_HTF_down);
   
   //======= 3 bars high copy handle to buffer ============
   if(!FillArrayFromBuffer(htf_3_ControlLine_Buffer,htf_3_control_line_input_shift,htf_3_ControlLine_handle,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_3_ControlLine_Buffer, htf_3_ControlLine_Buffer_up, htf_3_ControlLine_Buffer_down);
   
   if(!FillArrayFromBuffer(htf_3_ControlLine_Buffer_HTF,htf_3_control_line_input_shift_HTF,htf_3_ControlLine_handle_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_3_ControlLine_Buffer_HTF, htf_3_ControlLine_Buffer_HTF_up, htf_3_ControlLine_Buffer_HTF_down);
   
   if(!FillArrayFromBuffer(htf_3_ControlLine_Buffer_30_HTF,htf_3_control_line_input_shift_30_HTF,htf_3_ControlLine_handle_30_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_3_ControlLine_Buffer_30_HTF, htf_3_ControlLine_Buffer_30_HTF_up, htf_3_ControlLine_Buffer_30_HTF_down);
   

   //======= 5 bars high copy handle to buffer ============
   if(!FillArrayFromBuffer(htf_5_ControlLine_Buffer,htf_5_control_line_input_shift,htf_5_ControlLine_handle,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_5_ControlLine_Buffer, htf_5_ControlLine_Buffer_up, htf_5_ControlLine_Buffer_down);
   
   if(!FillArrayFromBuffer(htf_5_ControlLine_Buffer_HTF,htf_5_control_line_input_shift_HTF,htf_5_ControlLine_handle_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_5_ControlLine_Buffer_HTF, htf_5_ControlLine_Buffer_HTF_up, htf_5_ControlLine_Buffer_HTF_down);
   
   if(!FillArrayFromBuffer(htf_5_ControlLine_Buffer_30_HTF,htf_5_control_line_input_shift_30_HTF,htf_5_ControlLine_handle_30_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_5_ControlLine_Buffer_30_HTF, htf_5_ControlLine_Buffer_30_HTF_up, htf_5_ControlLine_Buffer_30_HTF_down);
   

   
   //======= 10 bars high copy handle to buffer ============
   if(!FillArrayFromBuffer(htf_10_ControlLine_Buffer,htf_10_control_line_input_shift,htf_10_ControlLine_handle,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_10_ControlLine_Buffer, htf_10_ControlLine_Buffer_up, htf_10_ControlLine_Buffer_down);
   
   if(!FillArrayFromBuffer(htf_10_ControlLine_Buffer_HTF,htf_10_control_line_input_shift_HTF,htf_10_ControlLine_handle_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_10_ControlLine_Buffer_HTF, htf_10_ControlLine_Buffer_HTF_up, htf_10_ControlLine_Buffer_HTF_down);
   
   if(!FillArrayFromBuffer(htf_10_ControlLine_Buffer_30_HTF,htf_10_control_line_input_shift_30_HTF,htf_10_ControlLine_handle_30_HTF,values_to_copy)) return(0);
   get_rise_and_fall(rates_total, htf_10_ControlLine_Buffer_30_HTF, htf_10_ControlLine_Buffer_30_HTF_up, htf_10_ControlLine_Buffer_30_HTF_down);
   
   //if(!FillArrayFromBuffer(control_resistence_Buffer, 0, control_resistence, values_to_copy)) return (0);



   // 3) Now for each bar, find the max of the 3 MAs at that bar
   //    and store it into `control_resistence_Buffer[i]`.
   for(int i = 0; i < rates_total; i++)
   {

      control_resistence_Buffer[i] = MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(MathMax(ControlLine_Buffer[i], ControlLine_Buffer_HTF[i]),ControlLine_Buffer_30_HTF[i]),htf_3_ControlLine_Buffer[i]),htf_3_ControlLine_Buffer_HTF[i]), htf_3_ControlLine_Buffer_30_HTF[i]), htf_5_ControlLine_Buffer[i]), htf_5_ControlLine_Buffer_HTF[i]), htf_5_ControlLine_Buffer_30_HTF[i]), htf_10_ControlLine_Buffer[i]), htf_10_ControlLine_Buffer_HTF[i]), htf_10_ControlLine_Buffer_30_HTF[i]);
      control_support_Buffer[i] = MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(MathMin(ControlLine_Buffer[i], ControlLine_Buffer_HTF[i]),ControlLine_Buffer_30_HTF[i]),htf_3_ControlLine_Buffer[i]),htf_3_ControlLine_Buffer_HTF[i]), htf_3_ControlLine_Buffer_30_HTF[i]), htf_5_ControlLine_Buffer[i]), htf_5_ControlLine_Buffer_HTF[i]), htf_5_ControlLine_Buffer_30_HTF[i]), htf_10_ControlLine_Buffer[i]), htf_10_ControlLine_Buffer_HTF[i]), htf_10_ControlLine_Buffer_30_HTF[i]);
      
      ControlLine_supperLine_Buffer[i]       = (ControlLine_Buffer[i] * control_weight_input) + (htf_3_ControlLine_Buffer[i] * control_weight_HTF_3_input) + (htf_5_ControlLine_Buffer[i] * control_weight_HTF_5_input) + (htf_10_ControlLine_Buffer[i] * control_weight_HTF_10_input);
      ControlLine_Buffer_supperLine_HTF[i]    =  (ControlLine_Buffer_HTF[i] * control_weight_input_HTF) + (htf_3_ControlLine_Buffer_HTF[i] * control_weight_HTF_3_input_HTF) + (htf_5_ControlLine_Buffer_HTF[i] * control_weight_HTF_5_input_HTF) + (htf_10_ControlLine_Buffer_HTF[i] * control_weight_HTF_10_input_HTF);
      ControlLine_supperLine_Buffer_30_HTF[i] =  (ControlLine_Buffer_30_HTF[i] * control_weight_input_30_HTF) + (htf_3_ControlLine_Buffer_30_HTF[i] * control_weight_HTF_3_input_30_HTF) + (htf_5_ControlLine_Buffer_30_HTF[i] * control_weight_HTF_5_input_30_HTF) + (htf_10_ControlLine_Buffer_30_HTF[i] * control_weight_HTF_10_input_30_HTF);
   }
   
   get_rise_and_fall(rates_total,ControlLine_supperLine_Buffer,ControlLine_supperLine_Buffer_up,ControlLine_supperLine_Buffer_down);
   get_rise_and_fall(rates_total,ControlLine_Buffer_supperLine_HTF,ControlLine_Buffer_supperLine_HTF_up,ControlLine_Buffer_supperLine_HTF_down);
   get_rise_and_fall(rates_total,ControlLine_supperLine_Buffer_30_HTF,ControlLine_supperLine_Buffer_30_HTF_up,ControlLine_supperLine_Buffer_30_HTF_down);

   
   
   
//--- form the message
   string comm=StringFormat("%s ==>  Updated value in the indicator %s: %d",
                            TimeToString(TimeCurrent(),TIME_DATE|TIME_SECONDS),
                            short_name,
                            values_to_copy);
//--- display the service message on the chart
   Comment(comm);
//--- memorize the number of values in the Moving Average indicator
   bars_calculated=calculated;
//--- return the prev_calculated value for the next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
//| Filling indicator buffers from the MA indicator                  |
//+------------------------------------------------------------------+
bool FillArrayFromBuffer(double &values[],   // indicator buffer of Moving Average values
                         int shift,          // shift
                         int ind_handle,     // handle of the iMA indicator
                         int amount          // number of copied values
                         )
  {
//--- reset error code
   ResetLastError();
//--- fill a part of the iMABuffer array with values from the indicator buffer that has 0 index
   if(CopyBuffer(ind_handle,0,-shift,amount,values)<0)
     {
      //--- if the copying fails, tell the error code
      PrintFormat("Failed to copy data from the iMA indicator, error code %d",GetLastError());
      //--- quit with zero result - it means that the indicator is considered as not calculated
      return(false);
     }
//--- everything is fine
   return(true);
  }
//+------------------------------------------------------------------+
//| Indicator deinitialization function                              |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   if(ControlLine_handle!=INVALID_HANDLE)
      IndicatorRelease(ControlLine_handle);
      
      
   if(ControlLine_handle_HTF != INVALID_HANDLE)
      IndicatorRelease(ControlLine_handle_HTF);

      
   if(ControlLine_handle_30_HTF != INVALID_HANDLE)
      IndicatorRelease(ControlLine_handle_30_HTF);
      
      
   if(htf_3_ControlLine_handle!=INVALID_HANDLE)
      IndicatorRelease(htf_3_ControlLine_handle);
      
      
   if(htf_3_ControlLine_handle_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_3_ControlLine_handle_HTF);

      
   if(htf_3_ControlLine_handle_30_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_3_ControlLine_handle_30_HTF);
      
      
      
   if(htf_5_ControlLine_handle!=INVALID_HANDLE)
      IndicatorRelease(htf_5_ControlLine_handle);
      
      
   if(htf_5_ControlLine_handle_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_5_ControlLine_handle_HTF);

      
   if(htf_5_ControlLine_handle_30_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_5_ControlLine_handle_30_HTF);
      
   if(htf_10_ControlLine_handle!=INVALID_HANDLE)
      IndicatorRelease(htf_10_ControlLine_handle);
      
      
   if(htf_10_ControlLine_handle_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_10_ControlLine_handle_HTF);

      
   if(htf_10_ControlLine_handle_30_HTF != INVALID_HANDLE)
      IndicatorRelease(htf_10_ControlLine_handle_30_HTF);
      
      
//--- clear the chart after deleting the indicator
   Comment("");
  }   
  
  



//=============================================================  Custom Methods =====================================================

  
int create_Ma_line(string name_in, ENUM_TIMEFRAMES control_line_input_period_in, int control_line_input_in, int control_line_input_shift_in, ENUM_MA_METHOD control_line_input_method_in, ENUM_APPLIED_PRICE control_line_input_applied_price_in, int control_line_input_smooth_in)
   {
   return iMA(name_in, control_line_input_period_in, control_line_input_smooth_in, control_line_input_shift_in, MODE_EMA, iMA(name_in, control_line_input_period_in, control_line_input_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in)); 
   //return iMA(name_in, control_line_input_period_in, control_line_input_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in);
   }  
/*   
int create_Ma_line_htf(string name_in, ENUM_TIMEFRAMES control_line_input_period_in, int control_line_input_in, int control_line_input_shift_in, ENUM_MA_METHOD control_line_input_method_in, ENUM_APPLIED_PRICE control_line_input_applied_price_in, int control_line_input_smooth_in, int higher_time_frame_in)
   {
   return iMA(name_in, control_line_input_period_in, control_line_input_smooth_in, control_line_input_shift_in,  MODE_EMA, iMA(name_in, control_line_input_period_in, control_line_input_in * higher_time_frame_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in)); 
   //return iMA(name_in, control_line_input_period_in, control_line_input_in * higher_time_frame_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in);
   }  
   
int create_Ma_line_30_htf(string name_in, ENUM_TIMEFRAMES control_line_input_period_in, int control_line_input_in, int control_line_input_shift_in, ENUM_MA_METHOD control_line_input_method_in, ENUM_APPLIED_PRICE control_line_input_applied_price_in, int control_line_input_smooth_in, int higher_time_frame_30_in)
   {
   return iMA(name_in, control_line_input_period_in, control_line_input_smooth_in, control_line_input_shift_in,  MODE_EMA, iMA(name_in, control_line_input_period_in, control_line_input_in * higher_time_frame_30_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in)); 
   //return iMA(name_in, control_line_input_period_in, control_line_input_in * higher_time_frame_30_in, control_line_input_shift_in, control_line_input_method_in, control_line_input_applied_price_in);
   }  */
   
   
 
void get_rise_and_fall(const int rates_total,
                double &ma_main[],
                double &ma_up[],
                double &ma_down[])
  {
   // 1) Clear or reset the up/down buffers so no stale data remains
   //    from older calls:
   for(int i=0; i<rates_total; i++)
     {
       ma_up[i]   = EMPTY_VALUE;
       ma_down[i] = EMPTY_VALUE;
     }

   // 2) Compare the MA of the current bar with the MA of the next bar (i+1).
   //    We'll start from rates_total-2 to avoid going out of bounds at i+1
   //    on the right edge of the chart.
   for(int i=rates_total-2; i>=0; i--)
     {
       double current = ma_main[i];
       double prev    = ma_main[i+1];

       if(current < prev)
         {
           // Sloping UP
           ma_up[i]   = current;
           ma_down[i] = EMPTY_VALUE;
         }
       else
         {
           // Sloping DOWN
           ma_down[i] = current;
           ma_up[i]   = EMPTY_VALUE;
         }
     }

}