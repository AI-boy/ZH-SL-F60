#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"



//**--------------全局变量-----------------------------------------------------

//**--------------函数申明-----------------------------------------------------

//**--------------函数定义-----------------------------------------------------

//系统运行状态数据及设置参数
//------------------------------------------------------------------------------//
		__EEPROM_DATA(0x02, 0x58, 0x00, 0xA2, 0x64, 0x64, 0x64, 0x64);
		
		__EEPROM_DATA(0x64, 0x01, 0x01, 0x01, 0x05, 0x05, 0x01, 0x01);
		
		__EEPROM_DATA(0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		__EEPROM_DATA(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		__EEPROM_DATA(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		__EEPROM_DATA(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		__EEPROM_DATA(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
		
		__EEPROM_DATA(0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
//------------------------------------------------------------------------------//

float p_v=0;    	//当前光伏电压

float b_v=0;		//当前电池电压

float load_v=0;		//当前负载电压

float charge_I =0; 	//当前充电电流

float load_I =0;    //当前负载电流

unsigned char  sys_mode=0;  //当前系统工作模式

unsigned char  today_index=0; //EEPROM 中今天电池电压记录保存索引位置

float bt_00_hv=0;		//0天前电池电压最高值 (即今天)
float bt_00_lv=0;		//0天前电池电压最低值 (即今天)

float bt_01_hv=0;		//1天前电池电压最高值
float bt_01_lv=0;		//1天前电池电压最低值

float bt_02_hv=0;		//2天前电池电压最高值
float bt_02_lv=0;		//2天前电池电压最低值

float bt_03_hv=0;		//3天前电池电压最高值
float bt_03_lv=0;		//3天前电池电压最低值

float bt_04_hv=0;		//4天前电池电压最高值
float bt_04_lv=0;		//4天前电池电压最低值

float bt_05_hv=0;		//5天前电池电压最高值
float bt_05_lv=0;		//5天前电池电压最低值

float bt_06_hv=0;		//6天前电池电压最高值
float bt_06_lv=0;		//6天前电池电压最低值

float bt_07_hv=0;		//7天前电池电压最高值
float bt_07_lv=0;		//7天前电池电压最低值

//参数设置

float light_pv=600;						//光控电压   设定范围:1--12V(100--1000)

float load_cc_I=162;						//LED灯工作电流  负载设定值:0.1--1.2A(2--120)

float load_percent=50;  				//节能输出百分比 50%

float step_01_load_percent=100;  		//节能输出百分比 20%

float step_02_load_percent=100;  		//节能输出百分比 60%

float step_03_load_percent=100;  		//节能输出百分比 80%

float step_04_load_percent=100;  		//节能输出百分比 60%

float step_05_load_percent=100;  		//节能输出百分比 20%

unsigned int  step_01_time_limit=1;		//输出时长 1 h

unsigned int  step_02_time_limit=3;		//输出时长 3 h

unsigned int  step_03_time_limit=4;		//输出时长 4 h

unsigned int  step_04_time_limit=3;		//输出时长 3 h

unsigned int  step_05_time_limit=1;		//输出时长 1 h

unsigned char volt_id	= 0x01; 		//电池电压类型

unsigned char bt_id		= 0x01; 		//电池类型 默认锂电池

unsigned int light_time= 0x00;			//光控时间 (单位：min)
//---------------------volt_id:
//01：12V锂电池系统    默认值
//02：24V锂电池系统  
//03：12V铅酸电池系统   
//04：24V铅酸电池系统
//---------------------bt_id
//01:锂电池 (默认)
//02:铅酸电池
//-----------------------------------节能输出调节(共计五个阶段：第一阶段：100%--80%   第二阶段：80%--60%   第三阶段：60%--40%  第四阶段：40%--20%  第五阶段：20%--0%)
float bt_volt_100 = 12.30; 			//100%电量时

float bt_volt_80  = 11.64; 			//80%电量

float bt_volt_60  = 10.98; 			//60%电量

float bt_volt_40  = 10.32; 			//40%电量

float bt_volt_20  = 9.66; 			//20%电量

float bt_volt_00  = 9.00; 			//0%电量



float dianchi_guoya_baohu=12.30;   	//100%  电池过压保护点

float dianchi_guoya_huifu=12.15;	//95%   电池过压恢复点

float dianchi_qianya_baohu=9.00;	//0%	电池欠压保护点

float dianchi_qianya_huifu=9.50;	//15%	电池欠压恢复点

float dianchi_cv_level=12.15;		// 进入恒压充电方式

float charge_i_limit=5.00;			//充电电流限定值5A

float shuchu_shortout_voltage=7.5; //输出短路电压

float shuchu_open_voltage=63.00;	//输出开路电压

float discharge_i_baohu=4.50;		//放电电流保护点  过流保护  4.50A

float discharge_i_limit=4.00;		//放电电流限定值 4.00A

float light_on_pv_level=6.00;		//亮灯光伏电压门限值 默认6V

float light_off_pv_level=8.00;		//关灯光伏电压门限值 默认8V


float charge_r_value=0.015;	   		//充电电流采样电阻

float discharge_r_value=0.03;		//放电电流采样电阻

float Load_Pmax=64.00;				//输出最大功率


  //--------------------------------红外遥控器数据接收
  unsigned char   ird_status=0x00;

  unsigned char   receive_bit_count=0x00;

  unsigned char   ird_receive_flag=0x00;

  unsigned char   ird_receive_time_count=0x00;

  unsigned long   ird_data=0x10ED40BF;

unsigned char light_mode=0x00;
unsigned char light2_mode=0x00;
unsigned char lr_cnt =0x00;
unsigned char led_out_ctrl=0x00;

/**********************************************************************
*函数名称：read_param_eeprom
*描述：获取系统参数
*返回类型：void
*输入形参：void
***********************************************************************/
void read_param_eeprom(void)
{
	unsigned char byte_h,byte_l;
	
	//------------------------------------
	byte_h=eeprom_read(0x00);
	
	byte_l=eeprom_read(0x01);
		
	light_pv=(byte_h<<8)|byte_l;   //光控电压
	
	
	//------------------------------------
	byte_h=eeprom_read(0x02);
	
	byte_l=eeprom_read(0x03);
		
	load_cc_I=(byte_h<<8)|byte_l; //负载工作电流
	
	
	//------------------------------------
	byte_l=eeprom_read(0x04);
								
	step_01_load_percent=byte_l;		 //第一阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x05);
								
	step_02_load_percent=byte_l;		 //第二阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x06);
								
	step_03_load_percent=byte_l;		 //第三阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x07);
								
	step_04_load_percent=byte_l;		 //第四阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x08);
								
	step_05_load_percent=byte_l;		 //第五阶段降载输出百分比
	
	//------------------------------------
	byte_l=eeprom_read(0x09);
								
	volt_id=byte_l;						//系统电池电压类型!!!!
	
	//------------------------------------
	byte_l=eeprom_read(0x0a);
								
	bt_id=byte_l;						//系统电池类型!!!!!!
	//------------------------------------
	byte_l=eeprom_read(0x0b);
								
	light_time=byte_l;					//光控时间
	//------------------------------------
	byte_l=eeprom_read(0x0c);
								
	step_01_time_limit=byte_l;			//第一阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0d);
								
	step_02_time_limit=byte_l;			//第二阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0e);
								
	step_03_time_limit=byte_l;			//第三阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x0f);
								
	step_04_time_limit=byte_l;			//第四阶段时长
	//------------------------------------
	byte_l=eeprom_read(0x10);
								
	step_05_time_limit=byte_l;			//第五阶段时长
	//------------------------------------今天电池电压EEPROM存储位置索引
	byte_l=eeprom_read(0x11);
								
	today_index=byte_l;					
	//------------------------------------今天电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	
	bt_00_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	
	bt_00_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------1天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	
	bt_01_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	
	bt_01_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------2天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	
	bt_02_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	
	bt_02_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------3天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	
	bt_03_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	
	bt_03_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------4天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	
	bt_04_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	
	bt_04_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------5天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	
	bt_05_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	
	bt_05_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------6天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	
	bt_06_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	
	bt_06_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------7天前电池电压记录
	byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	
	bt_07_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	
	bt_07_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------亮灯模式
	byte_l=eeprom_read(0x36);
								
	light_mode=byte_l;		 //默认值：0x00:常亮模式  0x01:感应模式   0x02:智能模式   第一路灯工作模式
	
	byte_l=eeprom_read(0x37);
								
	light2_mode=byte_l;		 //默认值：0x00:常亮模式  0x01:感应模式   0x02:智能模式   第二路灯工作模式
	
	//-------------------------------------开机状态
	byte_l=eeprom_read(0x38);
								
	device_status=byte_l;
	
	device_status=0x01;		//caiwk-2018-9-20
	
	if(device_status==0x00)
	{
		
		work_mode =0x00;
	}
	else
	{
		work_mode =0x00;
	}
	//-------------------------------------开灯状态
	byte_l=eeprom_read(0x39);
								
	led_out_ctrl=byte_l;
	
	
	
	
	if(light_time==0x00)
	{
		light_time_level = 500;
	}
	else
	{
		light_time_level = (unsigned long int)((unsigned long int)light_time*6*180);
	}				
	
	
	
	if(volt_id==0x01)			//9--12.3V  磷酸铁锂电池
	{
		bt_volt_100 = (12.35/31.04)*1000; 			//100%电量时

		bt_volt_80  = (11.80/31.04)*1000; 			//80%电量
		
		bt_volt_60  = (11.30/31.04)*1000; 			//60%电量
		
		bt_volt_40  = (10.80/31.04)*1000; 			//40%电量
		
		bt_volt_20  = (10.30/31.04)*1000; 			//20%电量
		
		bt_volt_00  = (9.00/31.04)*1000; 			//0%电量
		
		
		dianchi_guoya_baohu = (12.35/31.04)*1000;   	//100%  电池过压保护点
	
		dianchi_guoya_huifu = (12.15/31.04)*1000;		//95%   电池过压恢复点
		
		dianchi_qianya_baohu = (9.00/31.04)*1000;		//0%	电池欠压保护点
		
		dianchi_qianya_huifu = (9.50/31.04)*1000;		//15%	电池欠压恢复点		 
		
		dianchi_cv_level = (12.20/31.04)*1000;			//12.15时 进入恒压充电方式
		
		charge_i_limit = 5.00*15.0;				//充电电流限定值
		
		shuchu_shortout_voltage = (7.50/61)*1000; 	//输出短路电压
		
		shuchu_open_voltage = (61.00/61)*1000;		//输出开路电压
		
		discharge_i_baohu = 4.50*160;				//放电电流保护点  过流保护  4.5A
		
		discharge_i_limit = 4.00*160;				//放电电流限定值 4.0A
		
		light_on_pv_level = (light_pv*10)/61;		//亮灯光伏电压门限值
		
		light_off_pv_level = (10.0/61)*1000;		//关灯光伏电压门限值
		
		Load_Pmax=64.00;
		
	}
	else if(volt_id==0x02)
	{
		NOP();
	}
	else
	{
		NOP();
	}

}


/**********************************************************************
*函数名称：auto_system
*描述：自动识别系统电压 电池类型（锂电池、铅酸蓄电池）
*返回类型：void
*输入形参：void
***********************************************************************/
void auto_system(void)
{
	float sys_bt_voltage;	
	
	delay_ms(100);
	
	//------------------------------------系统电池类型!!!!!!
	bt_id=eeprom_read(0x0a);  
	//------------------------------------							
								
	sys_bt_voltage=0x00;
	
	battery_voltage_value=start_ad_convert(AN12_CHANNEL);
	
	sys_bt_voltage=(((float)battery_voltage_value)/1000)*31.04;
	
	if(bt_id==0x01)//----------------------锂电池
	{
		if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
			{
				volt_id=0x01;
				
				eeprom_write(0x09,volt_id);				//9--12.3V 系统
			}			
			else
			{
				NOP();
			}
	}
	else if(bt_id==0x02)//-------------------铅酸电池
	{
			if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
			{
				volt_id=0x01;
				
				eeprom_write(0x09,volt_id);				//9--12.3V 系统
			}			
			else
			{
				NOP();
			}
	}
	else
	{
			if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
			{
				volt_id=0x01;
				
				eeprom_write(0x09,volt_id);				//12V Li电池系统
			}
			else
			{
				NOP();
			}	
	}


	
}


void Init_Ird(void)
{
	TRISBbits.TRISB7 = 1;  //RB7--PGD  设置为输入  红外接受端口    下降沿触发中断 
	
	IOCBNbits.IOCBN7 = 1; //RB7 使能下降沿触发中断
	
	IOCBFbits.IOCBF7 = 0; //清RB7中断标志  
	
	TRISBbits.TRISB4 = 1;  //RB4--   下降沿触发中断 
	
	IOCBNbits.IOCBN4 = 1; //RB4 使能下降沿触发中断
	
	IOCBFbits.IOCBF4 = 0; //清RB4中断标志  
	
	IOCIF = 0;			//清电平变化中断标志
	
	IOCIE = 1;			//使能端口电平变化中断
	
	
	TMR0CS = 0;  //TIME0 时钟源选择位 FOSC/4
	
	PSA = 0;
	
	OPTION_REGbits.PS = 0b111;  //1:256 预分频比
	
	TMR0IF = 0;
	
	TMR0 = 0;
	
	TMR0IE = 0;
	
}




void Key_Menu(unsigned long key_value)
{
    unsigned char code;
    
    unsigned int  remote_mac;
    
    code=(unsigned char)(key_value>>8);
    //0x4ECA807F   其中4ECA为用户码 也可区分遥控器设备码 MAC 白色遥控器
    //0x00FF807F   其中00FF为用户码 也可区分遥控器设备码 MAC 黑色遥控器
    //0x10ED807F   其中10ED为用户码 也可区分遥控器设备码 MAC 此版本
    remote_mac=key_value>>16;
    
    if(remote_mac!=ZH_MAC)   //0x10ED  设备码
    {
        //return;
    }
  	
	
    switch(code)
    {
    	case HAN_MODE:
   						NOP();
    					break;  //
    	case STA_MODE://---------------------------------------------------标准模式(夜间常亮)
    					if(device_status==0x01) //--------------------------------设置第一路灯的工作模式
    					{
    						light_mode =0x00;
    						eeprom_write(0x36,(unsigned char)(light_mode));
    						led_out_ctrl=0x00;
							eeprom_write(0x39,(unsigned char)(led_out_ctrl));
    						work_mode =0x00;
					
							lr_cnt = 0x00;
							
							nop_index=0x00;
							discharge_index=0x00;											
							charge_index=0x00;	
							
    						Disable_Buck_Pwm();								
							Set_Buck_Pwm_Duty(0);
							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);
						
												
							LOAD_OUT_ENABLE;
																																			
							Enable_Bost_Pwm();												
																		
							Set_Bost_Pwm_Duty(25);						
												
							delay_ms(1000);
							
							Set_Bost_Pwm_Duty(0);

							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);													
							
							pv_voltage_status=0x00;  //空闲状态
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	case IRD_MODE://---------------------------------------------------人体感应模式(夜间有人亮灯)
    					if(device_status==0x01) 
    					{
    						light_mode =0x01;
    						eeprom_write(0x36,(unsigned char)(light_mode));
    						led_out_ctrl=0x00;
							eeprom_write(0x39,(unsigned char)(led_out_ctrl));
    						work_mode =0x00;
					
							lr_cnt = 0x00;
							
							nop_index=0x00;
							discharge_index=0x00;											
							charge_index=0x00;
							
    						Disable_Buck_Pwm();								
							Set_Buck_Pwm_Duty(0);
							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);
						
												
							LOAD_OUT_ENABLE;
																																			
							Enable_Bost_Pwm();												
																		
							Set_Bost_Pwm_Duty(25);						
												
							delay_ms(1000);
							
							Set_Bost_Pwm_Duty(0);

							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);													
							
							pv_voltage_status=0x00;  //空闲状态
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	case AUT_MODE://--------------------------------------------------智能模式
    					if(device_status==0x01) 
    					{
    						light_mode =0x02;
    						eeprom_write(0x36,(unsigned char)(light_mode));
    						led_out_ctrl=0x00;
							eeprom_write(0x39,(unsigned char)(led_out_ctrl));
    						work_mode =0x00;
					
							lr_cnt = 0x00;
							
							nop_index=0x00;
							discharge_index=0x00;											
							charge_index=0x00;
							
    						Disable_Buck_Pwm();								
							Set_Buck_Pwm_Duty(0);
							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);
						
												
							LOAD_OUT_ENABLE;
																																			
							Enable_Bost_Pwm();												
																		
							Set_Bost_Pwm_Duty(25);						
												
							delay_ms(1000);
							
							Set_Bost_Pwm_Duty(0);

							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);													
							
							pv_voltage_status=0x00;  //空闲状态
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break; 
    	case ONF_MODE://-----------------------------------------------手动开关灯模式
    					if(device_status==0x01)
    					{
    						led_out_ctrl=led_out_ctrl+1;
    						
    						led_out_ctrl=led_out_ctrl%2;
    						
    						eeprom_write(0x39,(unsigned char)(led_out_ctrl));
    					}
    					if(led_out_ctrl==0x00 && device_status==0x01)
    					{
	    					work_mode =0x00;
					
							lr_cnt = 0x00;
							
							nop_index=0x00;
							discharge_index=0x00;											
							charge_index=0x00;	
							
    						Disable_Buck_Pwm();								
							Set_Buck_Pwm_Duty(0);
							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);
						
												
							LOAD_OUT_ENABLE;
																																			
							Enable_Bost_Pwm();												
																		
							Set_Bost_Pwm_Duty(25);						
												
							delay_ms(1000);
							
							Set_Bost_Pwm_Duty(0);

							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);													
							
							pv_voltage_status=0x00;  //空闲状态
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					else if(led_out_ctrl==0x01 && device_status==0x01)
    					{
    						work_mode =0x00;
					
							lr_cnt = 0x00;
							
							nop_index=0x00;
							discharge_index=0x00;											
							charge_index=0x00;
							
							Disable_Buck_Pwm();								
							Set_Buck_Pwm_Duty(0);
							
							Disable_Bost_Pwm();
							//LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);
						
							delay_ms(200);			
							LOAD_OUT_ENABLE;																																	
							Enable_Bost_Pwm();											
																							
							Set_Bost_Pwm_Duty(35);
						
							delay_ms(500);
										
							Set_Bost_Pwm_Duty(0);
								
							delay_ms(500);
										
							Set_Bost_Pwm_Duty(35);
										
							delay_ms(500);
										
							Set_Bost_Pwm_Duty(0);
										
							delay_ms(500);
										
							Set_Bost_Pwm_Duty(35);
										
							delay_ms(500);
										
							Set_Bost_Pwm_Duty(0);
								
							Disable_Bost_Pwm();
							LOAD_OUT_DISABLE;
							Set_Bost_Pwm_Duty(0);					
							
							pv_voltage_status=0x00;  //空闲状态
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	default:break;
    }
    
    
    
    
} 