dofilepath("locale:tradetext.lua")    --������ó��ϵͳ����������
dofilepath("data:ui/newui/Styles/HWRM_Style/HWRMDefines.lua")   --������ԭ���Ĭ������
dofilepath("data:ui/newui/Styles/HWRM_Style/ControlConstructors.lua") --������ԭ���Ĭ������

DIALOGWIDTH = 254   --dialogwidth��������˼�ǡ��Ի����ȡ��������Ƕ�����һ����dialogwidth�ı���������ֵ����254��
--�����ں�����Ҫ��ĳ����������254��ʱ����Բ���д=254���ǿ���д��=DIALOGWIDTH

carrierNOfighter = {          --����Ĵ�������
	stylesheet = "HW2StyleSheet",   --��֪��ɶ��˼

	Layout = {						
		pos_XY = {	x=0.0, y=0.0, xr="px", yr="px",},					  --�����λ�����ꣿ
		size_WH = {w = 1, h = 1, wr = "scr", hr = "scr",},        --����Ĵ�С����
	},

	pixelUVCoords = 1,    --�������ɶ��˼
	
	RootElementSettings = {         --Ӧ������ɫ�趨��
		backgroundColor = COLOR_FULLSCREEN_DARKEN,  --ʹ����ԭ��HW2�������ɫ���룿
	},
	
	onShow = "MainUI_PushEnabledCommandState(); MainUI_DisableAllCommands(1);",    --��֪��ɶ��˼
	onHide = "MainUI_PopEnabledCommandState()",     --��֪��ɶ��˼
	;
		--onShow��������浯����ʱ��ִ�еĴ���
		--DisableAllCommands�ڽ��浯����ʱ���ֹ���µ�ָ�PushEnabledCommandState�ڽ��浯����ʱ���Ѿ��µ�����ڼ���
--onHide������������ص�ʱ��ִ�еĴ��� 



----------------------- Master Frameɶ��˼��� --------------------
	{
		type = "RmWindow",      --Ӧ���ǿ�ܺ������Ӱ
		WindowTemplate = PANEL_WINDOWSTYLE,
		TitleText =	"$5533", -- "WARNING",      --����  Ӧ������ͷ����
		-- SubtitleText = "$5169", 	
	
			
		Layout = {
			pivot_XY = { 0.5, 0.5 },			    --�����λ������		
			pos_XY = {	x=0.5, y=0.5, xr="par", yr="par",},			 --�����λ�����꣨Ҳ���Ǿ��������ֵ�λ�ã���	
		},	
		
		autosize  = 1,   --�Զ��ѳߴ�����Ϊ1��

		--arrangetype = "vert",
		--arrangeSep = {	x=0, y=PANEL_SPACING_VERT, xr="scr", yr="scr",},
		;
			
			
----------------------- Title Text Row -----------------------			
		{
			type = "Frame",   --�������
			autosize  = 1,
			arrangetype = "vert",
			arrangedir = 1,	

			Layout = {
				margin_LT = { l = PANEL_PAD_HORIZ, t = PANEL_PAD_VERT, lr = "scr", tr = "scr" },
				margin_RB = { r = PANEL_PAD_HORIZ, b =1, rr = "scr", br = "px" },				 
				size_WH = {	w = 0.5, h = 1.0, wr = "scr", hr = "px" },		
				--max_WH = { w = DIALOGBOX_WIDTH, wr = "scr" },								  --����С������
			},	

			
			;			
			-- Message Label
			{
					type = "TextLabel",
					name = "m_lblMessage",	    --��LUA�ű����m_lblMessage��Ӧ����������д���õ�����				
					autosize = 1,
					wrapping = 1,
					Text = {
						textStyle = "RM_MessageLabel_TextStyle",

						vAlign = "Top",
						hAlign = "Left",
					},

					Layout = {
						margin_RB = { r = 1, b =PANEL_PAD_VERT, rr = "px", br = "scr" },					
						size_WH = {w = 1, h = 1, wr = "par", hr = "px",},
					},

					giveParentMouseInput = 1,
					;
			},
					
			------------------------------------------------------------------------------------
			-- BOTTOM ROW
			------------------------------------------------------------------------------------
			
			{
				type = "Frame",			

				autosize  = 1,

				clipchildren=0,
				Layout = {				
					size_WH = {w = 1, h = 1, wr = "par", hr = "px",},
				},

				;
				{
					type = "Frame",			

					autosize  = 1,

					arrangetype = "horiz",
					arrangedir = 1,	
					wrapping = 1,				--�Զ�����

					Layout = {
						pivot_XY = { 1.0, 0.0 },					
						pos_XY = {	x=1.0, y=0.0, xr="par", yr="px",},					

					},
					arrangeSep = {	x=BUTTON_SPACING_HORIZ, y=0, xr="scr", yr="scr",},	
					;
					--NewMenuButton("key01",	"$42455",	"",	0,	BTN_FOOTER_SMALL_LAYOUT,	"FEButtonStyle1",	[[UI_SetElementVisible('carrierNOfighter','key01',0);]]),
											NewMenuButton("m_btnAccept",	"$43845",	"",	0,	BTN_FOOTER_SMALL_LAYOUT,	"FEButtonStyle1",	[[UI_HideScreen('carrierNOfighter');]]),
               --Ӧ���������һ��ȷ�ϰ�ťDTM004[15]����ť����������
							
			  },			
			},		
		},
	},	
}

	