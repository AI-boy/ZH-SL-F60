#include <xc.h>
#include <GenericTypeDefs.h>

#include "userdefine.h"



//**--------------ȫ�ֱ���-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//**--------------��������-----------------------------------------------------

//ϵͳ����״̬���ݼ����ò���
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

float p_v=0;    	//��ǰ�����ѹ

float b_v=0;		//��ǰ��ص�ѹ

float load_v=0;		//��ǰ���ص�ѹ

float charge_I =0; 	//��ǰ������

float load_I =0;    //��ǰ���ص���

unsigned char  sys_mode=0;  //��ǰϵͳ����ģʽ

unsigned char  today_index=0; //EEPROM �н����ص�ѹ��¼��������λ��

float bt_00_hv=0;		//0��ǰ��ص�ѹ���ֵ (������)
float bt_00_lv=0;		//0��ǰ��ص�ѹ���ֵ (������)

float bt_01_hv=0;		//1��ǰ��ص�ѹ���ֵ
float bt_01_lv=0;		//1��ǰ��ص�ѹ���ֵ

float bt_02_hv=0;		//2��ǰ��ص�ѹ���ֵ
float bt_02_lv=0;		//2��ǰ��ص�ѹ���ֵ

float bt_03_hv=0;		//3��ǰ��ص�ѹ���ֵ
float bt_03_lv=0;		//3��ǰ��ص�ѹ���ֵ

float bt_04_hv=0;		//4��ǰ��ص�ѹ���ֵ
float bt_04_lv=0;		//4��ǰ��ص�ѹ���ֵ

float bt_05_hv=0;		//5��ǰ��ص�ѹ���ֵ
float bt_05_lv=0;		//5��ǰ��ص�ѹ���ֵ

float bt_06_hv=0;		//6��ǰ��ص�ѹ���ֵ
float bt_06_lv=0;		//6��ǰ��ص�ѹ���ֵ

float bt_07_hv=0;		//7��ǰ��ص�ѹ���ֵ
float bt_07_lv=0;		//7��ǰ��ص�ѹ���ֵ

//��������

float light_pv=600;						//��ص�ѹ   �趨��Χ:1--12V(100--1000)

float load_cc_I=162;						//LED�ƹ�������  �����趨ֵ:0.1--1.2A(2--120)

float load_percent=50;  				//��������ٷֱ� 50%

float step_01_load_percent=100;  		//��������ٷֱ� 20%

float step_02_load_percent=100;  		//��������ٷֱ� 60%

float step_03_load_percent=100;  		//��������ٷֱ� 80%

float step_04_load_percent=100;  		//��������ٷֱ� 60%

float step_05_load_percent=100;  		//��������ٷֱ� 20%

unsigned int  step_01_time_limit=1;		//���ʱ�� 1 h

unsigned int  step_02_time_limit=3;		//���ʱ�� 3 h

unsigned int  step_03_time_limit=4;		//���ʱ�� 4 h

unsigned int  step_04_time_limit=3;		//���ʱ�� 3 h

unsigned int  step_05_time_limit=1;		//���ʱ�� 1 h

unsigned char volt_id	= 0x01; 		//��ص�ѹ����

unsigned char bt_id		= 0x01; 		//������� Ĭ��﮵��

unsigned int light_time= 0x00;			//���ʱ�� (��λ��min)
//---------------------volt_id:
//01��12V﮵��ϵͳ    Ĭ��ֵ
//02��24V﮵��ϵͳ  
//03��12VǦ����ϵͳ   
//04��24VǦ����ϵͳ
//---------------------bt_id
//01:﮵�� (Ĭ��)
//02:Ǧ����
//-----------------------------------�����������(��������׶Σ���һ�׶Σ�100%--80%   �ڶ��׶Σ�80%--60%   �����׶Σ�60%--40%  ���Ľ׶Σ�40%--20%  ����׶Σ�20%--0%)
float bt_volt_100 = 12.30; 			//100%����ʱ

float bt_volt_80  = 11.64; 			//80%����

float bt_volt_60  = 10.98; 			//60%����

float bt_volt_40  = 10.32; 			//40%����

float bt_volt_20  = 9.66; 			//20%����

float bt_volt_00  = 9.00; 			//0%����



float dianchi_guoya_baohu=12.30;   	//100%  ��ع�ѹ������

float dianchi_guoya_huifu=12.15;	//95%   ��ع�ѹ�ָ���

float dianchi_qianya_baohu=9.00;	//0%	���Ƿѹ������

float dianchi_qianya_huifu=9.50;	//15%	���Ƿѹ�ָ���

float dianchi_cv_level=12.15;		// �����ѹ��緽ʽ

float charge_i_limit=5.00;			//�������޶�ֵ5A

float shuchu_shortout_voltage=7.5; //�����·��ѹ

float shuchu_open_voltage=63.00;	//�����·��ѹ

float discharge_i_baohu=4.50;		//�ŵ����������  ��������  4.50A

float discharge_i_limit=4.00;		//�ŵ�����޶�ֵ 4.00A

float light_on_pv_level=6.00;		//���ƹ����ѹ����ֵ Ĭ��6V

float light_off_pv_level=8.00;		//�صƹ����ѹ����ֵ Ĭ��8V


float charge_r_value=0.015;	   		//��������������

float discharge_r_value=0.03;		//�ŵ������������

float Load_Pmax=64.00;				//��������


  //--------------------------------����ң�������ݽ���
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
*�������ƣ�read_param_eeprom
*��������ȡϵͳ����
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void read_param_eeprom(void)
{
	unsigned char byte_h,byte_l;
	
	//------------------------------------
	byte_h=eeprom_read(0x00);
	
	byte_l=eeprom_read(0x01);
		
	light_pv=(byte_h<<8)|byte_l;   //��ص�ѹ
	
	
	//------------------------------------
	byte_h=eeprom_read(0x02);
	
	byte_l=eeprom_read(0x03);
		
	load_cc_I=(byte_h<<8)|byte_l; //���ع�������
	
	
	//------------------------------------
	byte_l=eeprom_read(0x04);
								
	step_01_load_percent=byte_l;		 //��һ�׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x05);
								
	step_02_load_percent=byte_l;		 //�ڶ��׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x06);
								
	step_03_load_percent=byte_l;		 //�����׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x07);
								
	step_04_load_percent=byte_l;		 //���Ľ׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x08);
								
	step_05_load_percent=byte_l;		 //����׶ν�������ٷֱ�
	
	//------------------------------------
	byte_l=eeprom_read(0x09);
								
	volt_id=byte_l;						//ϵͳ��ص�ѹ����!!!!
	
	//------------------------------------
	byte_l=eeprom_read(0x0a);
								
	bt_id=byte_l;						//ϵͳ�������!!!!!!
	//------------------------------------
	byte_l=eeprom_read(0x0b);
								
	light_time=byte_l;					//���ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0c);
								
	step_01_time_limit=byte_l;			//��һ�׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0d);
								
	step_02_time_limit=byte_l;			//�ڶ��׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0e);
								
	step_03_time_limit=byte_l;			//�����׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x0f);
								
	step_04_time_limit=byte_l;			//���Ľ׶�ʱ��
	//------------------------------------
	byte_l=eeprom_read(0x10);
								
	step_05_time_limit=byte_l;			//����׶�ʱ��
	//------------------------------------�����ص�ѹEEPROM�洢λ������
	byte_l=eeprom_read(0x11);
								
	today_index=byte_l;					
	//------------------------------------�����ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	
	bt_00_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	
	bt_00_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------1��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	
	bt_01_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	
	bt_01_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------2��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	
	bt_02_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	
	bt_02_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------3��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	
	bt_03_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	
	bt_03_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------4��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	
	bt_04_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	
	bt_04_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------5��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	
	bt_05_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	
	bt_05_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------6��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	
	bt_06_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	
	bt_06_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------7��ǰ��ص�ѹ��¼
	byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	
	bt_07_hv=(byte_h<<8)|byte_l;
	
	byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
								
	byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	
	bt_07_lv=(byte_h<<8)|byte_l;
	
	//------------------------------------����ģʽ
	byte_l=eeprom_read(0x36);
								
	light_mode=byte_l;		 //Ĭ��ֵ��0x00:����ģʽ  0x01:��Ӧģʽ   0x02:����ģʽ   ��һ·�ƹ���ģʽ
	
	byte_l=eeprom_read(0x37);
								
	light2_mode=byte_l;		 //Ĭ��ֵ��0x00:����ģʽ  0x01:��Ӧģʽ   0x02:����ģʽ   �ڶ�·�ƹ���ģʽ
	
	//-------------------------------------����״̬
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
	//-------------------------------------����״̬
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
	
	
	
	if(volt_id==0x01)			//9--12.3V  ������﮵��
	{
		bt_volt_100 = (12.35/31.04)*1000; 			//100%����ʱ

		bt_volt_80  = (11.80/31.04)*1000; 			//80%����
		
		bt_volt_60  = (11.30/31.04)*1000; 			//60%����
		
		bt_volt_40  = (10.80/31.04)*1000; 			//40%����
		
		bt_volt_20  = (10.30/31.04)*1000; 			//20%����
		
		bt_volt_00  = (9.00/31.04)*1000; 			//0%����
		
		
		dianchi_guoya_baohu = (12.35/31.04)*1000;   	//100%  ��ع�ѹ������
	
		dianchi_guoya_huifu = (12.15/31.04)*1000;		//95%   ��ع�ѹ�ָ���
		
		dianchi_qianya_baohu = (9.00/31.04)*1000;		//0%	���Ƿѹ������
		
		dianchi_qianya_huifu = (9.50/31.04)*1000;		//15%	���Ƿѹ�ָ���		 
		
		dianchi_cv_level = (12.20/31.04)*1000;			//12.15ʱ �����ѹ��緽ʽ
		
		charge_i_limit = 5.00*15.0;				//�������޶�ֵ
		
		shuchu_shortout_voltage = (7.50/61)*1000; 	//�����·��ѹ
		
		shuchu_open_voltage = (61.00/61)*1000;		//�����·��ѹ
		
		discharge_i_baohu = 4.50*160;				//�ŵ����������  ��������  4.5A
		
		discharge_i_limit = 4.00*160;				//�ŵ�����޶�ֵ 4.0A
		
		light_on_pv_level = (light_pv*10)/61;		//���ƹ����ѹ����ֵ
		
		light_off_pv_level = (10.0/61)*1000;		//�صƹ����ѹ����ֵ
		
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
*�������ƣ�auto_system
*�������Զ�ʶ��ϵͳ��ѹ ������ͣ�﮵�ء�Ǧ�����أ�
*�������ͣ�void
*�����βΣ�void
***********************************************************************/
void auto_system(void)
{
	float sys_bt_voltage;	
	
	delay_ms(100);
	
	//------------------------------------ϵͳ�������!!!!!!
	bt_id=eeprom_read(0x0a);  
	//------------------------------------							
								
	sys_bt_voltage=0x00;
	
	battery_voltage_value=start_ad_convert(AN12_CHANNEL);
	
	sys_bt_voltage=(((float)battery_voltage_value)/1000)*31.04;
	
	if(bt_id==0x01)//----------------------﮵��
	{
		if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
			{
				volt_id=0x01;
				
				eeprom_write(0x09,volt_id);				//9--12.3V ϵͳ
			}			
			else
			{
				NOP();
			}
	}
	else if(bt_id==0x02)//-------------------Ǧ����
	{
			if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
			{
				volt_id=0x01;
				
				eeprom_write(0x09,volt_id);				//9--12.3V ϵͳ
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
				
				eeprom_write(0x09,volt_id);				//12V Li���ϵͳ
			}
			else
			{
				NOP();
			}	
	}


	
}


void Init_Ird(void)
{
	TRISBbits.TRISB7 = 1;  //RB7--PGD  ����Ϊ����  ������ܶ˿�    �½��ش����ж� 
	
	IOCBNbits.IOCBN7 = 1; //RB7 ʹ���½��ش����ж�
	
	IOCBFbits.IOCBF7 = 0; //��RB7�жϱ�־  
	
	TRISBbits.TRISB4 = 1;  //RB4--   �½��ش����ж� 
	
	IOCBNbits.IOCBN4 = 1; //RB4 ʹ���½��ش����ж�
	
	IOCBFbits.IOCBF4 = 0; //��RB4�жϱ�־  
	
	IOCIF = 0;			//���ƽ�仯�жϱ�־
	
	IOCIE = 1;			//ʹ�ܶ˿ڵ�ƽ�仯�ж�
	
	
	TMR0CS = 0;  //TIME0 ʱ��Դѡ��λ FOSC/4
	
	PSA = 0;
	
	OPTION_REGbits.PS = 0b111;  //1:256 Ԥ��Ƶ��
	
	TMR0IF = 0;
	
	TMR0 = 0;
	
	TMR0IE = 0;
	
}




void Key_Menu(unsigned long key_value)
{
    unsigned char code;
    
    unsigned int  remote_mac;
    
    code=(unsigned char)(key_value>>8);
    //0x4ECA807F   ����4ECAΪ�û��� Ҳ������ң�����豸�� MAC ��ɫң����
    //0x00FF807F   ����00FFΪ�û��� Ҳ������ң�����豸�� MAC ��ɫң����
    //0x10ED807F   ����10EDΪ�û��� Ҳ������ң�����豸�� MAC �˰汾
    remote_mac=key_value>>16;
    
    if(remote_mac!=ZH_MAC)   //0x10ED  �豸��
    {
        //return;
    }
  	
	
    switch(code)
    {
    	case HAN_MODE:
   						NOP();
    					break;  //
    	case STA_MODE://---------------------------------------------------��׼ģʽ(ҹ�䳣��)
    					if(device_status==0x01) //--------------------------------���õ�һ·�ƵĹ���ģʽ
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
							
							pv_voltage_status=0x00;  //����״̬
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	case IRD_MODE://---------------------------------------------------�����Ӧģʽ(ҹ����������)
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
							
							pv_voltage_status=0x00;  //����״̬
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	case AUT_MODE://--------------------------------------------------����ģʽ
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
							
							pv_voltage_status=0x00;  //����״̬
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break; 
    	case ONF_MODE://-----------------------------------------------�ֶ����ص�ģʽ
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
							
							pv_voltage_status=0x00;  //����״̬
							
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
							
							pv_voltage_status=0x00;  //����״̬
							
							day_time_count=0x00;
							
							night_time_count=0x00;
							
							pv_time_count=0x00;
    					}
    					break;  
    	default:break;
    }
    
    
    
    
} 