package com.framework.util;

public class Const {
    
    public static final String LOGIN = "/login_toLogin.do";             		//登录地址
	public static final String SESSION_SECURITY_CODE = "sessionSecCode"; 		//验证码
	public static final String PAGE = "admin/config/PAGE.txt";          		//分页条数配置路径

	public static final String CONNECT_PATH_JX = PropertyUtils.getPropertyValueByKey("CONNECT_PATH"); //调用接口的地址前缀
	public static final String CONNECT_PATH_JX_ORA = PropertyUtils.getPropertyValueByKey("CONNECT_PATH");
	
	public static final String CLIENT_PATH = PropertyUtils.getPropertyValueByKey("CLIENT_PATH"); //调用接口的地址前缀
	
	public static final String VERSION  = "v1.0";   //接口版本

	public static final String SESSION_USER = "sessionUser";
	public static final String NO_INTERCEPTOR_PATH = ".*/((login)|(Interface/*)|(logout)|(code)|(statistics)|(static)|(uploadfiles/qrcode/*)).*"; //不对匹配该值的访问路径拦截（正则）


	//牌照二维码
	public static final String GETSEAL_TOP = PropertyUtils.getPropertyValueByKey("getSealTop");
	public static final String GETSEAL_BOTTOM = PropertyUtils.getPropertyValueByKey("getSealBottom");
	//二维码跳转地址
	public static final String TwoDimensionCodePath = PropertyUtils.getPropertyValueByKey("TwoDimensionCodePath");
	//客户端下载地址
    public static final String DownLoadPath = PropertyUtils.getPropertyValueByKey("DownLoadPath");

	//二维码存放路径
	public static final String FILEPATHTWODIMENSIONCODE = "uploadfiles/twoDimensionCode/";


	//项目根路径
	public static final String PROJECTURL = PropertyUtils.getPropertyValueByKey("projecturl");


	
	//成功
	public static final String SUCCESS = "success";
	//失败
	public static final String FAIL = "fail";
	//全部重复，用于制作牌照
	public static final String ALLREPEAT = "allrepeat";
	//重复
	public static final String REPEAT = "repeat";
	
	public static  String EMAILPROTOCOL = "smtp.139.com";				//	邮箱协议
	public static  int EMAILPORT = 25;									//邮箱端口
	public static  String EMAILUSER = "18279189819@139.com";				//发送邮箱的账号
	public static  String EMAILPASSWORD = "yusi19960619";				//发送邮箱的密码
	public static  String EMAIL_NAME = "江西瑞臻企业征信服务有限公司";
	

	//数据库文言
	public static final String ORACLE = "oracle";
	public static final String MYSQL = "mysql";
	

}