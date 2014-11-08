package com.daikuan.util;
import java.io.UnsupportedEncodingException;
import java.util.regex.Pattern;

/**
 * chechSafe��У���ַ����Ƿ�ȫ��+-_��a-z��A-Z��0-9��������������������
 * chechHTML:ƥ��HTML���
 * checkEmail����֤Email
 * checkIdCard:��֤���֤����(���ϸ���֤)
 * checkMobile����֤�ֻ�����
 * checkPhone:��֤�̶��绰����
 * checkDigit:��֤�������������͸�������
 * checkDecimals:��֤�����͸�����������������������������
 * checkDecimal:��֤���
 * checkBlankSpace:��֤�հ��ַ����հ��ַ����������ո�\t��\n��\r��\f��\x0B
 * checkChinese����֤����
 * checkIncludeChinese����֤�Ƿ��������
 * checkBirthday����֤���ڣ������գ���ʽ��1992-09-03����1992.09.03
 * checkURL����֤URL��ַ
 * checkPostcode��ƥ���й���������
 * checkIpAddress:ƥ��IP��ַ(��ƥ�䣬��ʽ���磺192.168.1.1��127.0.0.1��û��ƥ��IP�εĴ�С)
 * @author 
 *
 */
public class DataValidateUtil {
	public static void main(String[] args) {
		System.out.println(checkDigit("--1"));
//		System.out.println(dataValidateUtil.chechHTML("df"));
	
	}
	/**
	 * У���ַ����Ƿ�ȫ��
	 * +-_��a-z��A-Z��0-9��������������������
	 * @param str
	 * @return
	 */
	public static boolean chechSafe(String str){
		 String regex = "[a-zA-Z0-9\u4E00-\u9FA5\\-_+]*"; 
	     return Pattern.matches(regex, str); 
	}
	/**
	 * ƥ��HTML���
	 * @param str
	 * @return
	 */
	public static boolean chechHTML(String str){
		 String regex = "<(S*?)[^>]*>.*?|<.*? />"; 
	     return Pattern.matches(regex, str); 
	}
	/**
     * ��֤Email
     * @param email email��ַ����ʽ��zhangsan@sina.com��zhangsan@xxx.com.cn��xxx�����ʼ�������
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkEmail(String email) { 
        String regex = "\\w+@[\\w-]+(\\.[\\w-]+)+"; 
        return Pattern.matches(regex, email); 
    } 
     
    /**
     * ��֤���֤����
     * @param idCard �������֤����15λ��18λ�����һλ���������ֻ���ĸ
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkIdCard(String idCard) { 
        String regex = "[1-9]\\d{13,16}[a-zA-Z0-9]{1}"; 
        return Pattern.matches(regex,idCard); 
    } 
     
    /**
     * ��֤�ֻ����루֧�ֹ��ʸ�ʽ��+86135xxxx...���й��ڵأ���+00852137xxxx...���й���ۣ���
     * @param mobile �ƶ�����ͨ��������Ӫ�̵ĺ����
     *<p>�ƶ��ĺŶΣ�134(0-8)��135��136��137��138��139��147��Ԥ������TD��������
     *��150��151��152��157��TDר�ã���158��159��187��δ���ã���188��TDר�ã�</p>
     *<p>��ͨ�ĺŶΣ�130��131��132��155��156�������ר�ã���185��δ���ã���186��3g��</p>
     *<p>���ŵĺŶΣ�133��153��180��δ���ã���189</p>
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkMobile(String mobile) { 
        String regex = "(\\+\\d+)?1[3458]\\d{9}$"; 
        return Pattern.matches(regex,mobile); 
    } 
     
    /**
     * ��֤�̶��绰����
     * @param phone �绰���룬��ʽ�����ң��������绰���� + ���ţ����д��룩 + �绰���룬�磺+8602085588447
     * <p><b>���ң������� ���� ��</b>��ʶ�绰����Ĺ��ң��������ı�׼���ң����������롣�������� 0 �� 9 ��һλ���λ���֣�
     *  ����֮���ǿո�ָ��Ĺ��ң����������롣</p>
     * <p><b>���ţ����д��룩��</b>����ܰ���һ�������� 0 �� 9 �����֣���������д������Բ���š���
     * �Բ�ʹ�õ�������д���Ĺ��ң�����������ʡ�Ը������</p>
     * <p><b>�绰���룺</b>������� 0 �� 9 ��һ���������� </p>
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkPhone(String phone) { 
        String regex = "(\\+\\d+)?(\\d{3,4}\\-?)?\\d{7,8}$"; 
        return Pattern.matches(regex, phone); 
    } 
    /**
     * ��֤���
     */
    public static boolean checkDecimal(String decimals) { 
		  String regex = "(([1-9]\\d*)|0)(\\.\\d{1,2})?";
	      return Pattern.matches(regex,decimals); 
	    } 
    /**
     * ��֤�������������͸�������  	
     * @param digit һλ���λ0-9֮�������
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkDigit(String digit) { 
    	String regex = "^[-\\+]?\\d+$"; 
        return Pattern.matches(regex,digit); 
    } 
    
    /**
     * ��֤������
     * @param digit һλ���λ0-9֮�������
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkDigitInt(String digit) { 
    	 String patrn ="^[+]?\\d+$"; 
        return Pattern.matches(patrn,digit); 
    } 
   
    /**
     * ��֤�����͸�����������������������������
     * @param decimals һλ���λ0-9֮��ĸ��������磺1.23��233.30
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkDecimals(String decimals) { 
        String regex = "\\-?[1-9]\\d+(\\.\\d+)?"; 
        return Pattern.matches(regex,decimals); 
    }  
     
    /**
     * ��֤�հ��ַ�
     * @param blankSpace �հ��ַ����������ո�\t��\n��\r��\f��\x0B
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkBlankSpace(String blankSpace) { 
        String regex = "\\s+"; 
        return Pattern.matches(regex,blankSpace); 
    } 
     
    /**
     * ��֤����
     * @param chinese �����ַ�
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkChinese(String chinese) { 
    	System.out.println("ԭ�ַ�����"+chinese);
    	try {
			System.out.println("GBK��"+new String(chinese.getBytes("UTF-8"),"GBK"));
			System.out.println("UTF-8��"+new String(chinese.getBytes("ISO8859-1"),"UTF-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        String regex = "^[\u4E00-\u9FA5]+$"; 
        return Pattern.matches(regex,chinese); 
    } 
    /**
     * ��֤�Ƿ��������--�ֿ�
     * @param chinese �����ַ�
     * @return ����������ַ���true�����������ַ���false
     */ 
    public static boolean checkIncludeChinese(String chinese) { 
    	Pattern regex =Pattern.compile("[\u4e00-\u9fa5]"); 
        return regex.matcher(chinese).find();
    } 
     
    /**
     * ��֤���ڣ������գ�
     * @param birthday ���ڣ���ʽ��1992-09-03����1992.09.03
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkBirthday(String birthday) { 
        String regex = "\\d{4}([-./])\\d{1,2}([-./])\\d{1,2}"; 
        return Pattern.matches(regex,birthday); 
    } 
     
    /**
     * ��֤URL��ַ
     * @param url ��ʽ��http://blog.csdn.net:80/xyang81/article/details/7705960? �� http://www.csdn.net:80
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkURL(String url) { 
        String regex = "(https?://(w{3}\\.)?)?\\w+\\.\\w+(\\.[a-zA-Z]+)*(:\\d{1,5})?(/\\w*)*(\\??(.+=.*)?(&.+=.*)?)?"; 
        return Pattern.matches(regex, url); 
    } 
     
    /**
     * ƥ���й���������
     * @param postcode ��������
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkPostcode(String postcode) { 
        String regex = "[1-9]\\d{5}"; 
        return Pattern.matches(regex, postcode); 
    } 
     
    /**
     * ƥ��IP��ַ(��ƥ�䣬��ʽ���磺192.168.1.1��127.0.0.1��û��ƥ��IP�εĴ�С)
     * @param ipAddress IPv4��׼��ַ
     * @return ��֤�ɹ�����true����֤ʧ�ܷ���false
     */ 
    public static boolean checkIpAddress(String ipAddress) { 
        String regex = "[1-9](\\d{1,2})?\\.(0|([1-9](\\d{1,2})?))\\.(0|([1-9](\\d{1,2})?))\\.(0|([1-9](\\d{1,2})?))"; 
        return Pattern.matches(regex, ipAddress); 
    } 
}
