package com.daikuan.util.email;

import java.util.Date;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



/**   
 * @author: joynet007@163.com
 * @date 2014-11-1 ����12:03:40
 * @Description:��������Ҫ�����Ǵ����ʼ���Ϣ�ķ��ͣ� ϵͳ��������ʱ���Զ���ʼ�� �����ʼ��ĵĶ˿ڡ���ַ���û��ȳ�ʼ�Ĳ������á�
 */
public class EmailHelper {

	    private static  int port ;
	    private static  String server ;//�ʼ������������ˣ�
	    private static  String from ;//������
	    private static  String user ;//�����ߵ�ַ
	    private static  String password;//����
	    
	    
	    /**
	     * 
	    * @Title: sendEmail 
	    * @Description:  ���������Ҫ���ڷ����ʼ����������������ʼ��ĵ�ַ���ʼ������⡢�ʼ�������
	    * @param @param email  ����������
	    * @param @param subject ����
	    * @param @param body    ����
	    * @return void    ��������    
	    * @throws
	     */
	    public static void sendEmail(String email, String subject, String body) {
	        try {
	        	
	        	
	            Properties props = new Properties();
	            props.put("mail.smtp.host", server);
	            props.put("mail.smtp.port", String.valueOf(port));
	            props.put("mail.smtp.auth", "true");
	            javax.mail.Transport transport = null;
	            Session session = Session.getDefaultInstance(props, null);
	            transport = session.getTransport("smtp");
	            transport.connect(server, user, password);
	            
	            
	            MimeMessage msg = new MimeMessage(session);
	            msg.setSentDate(new Date());
	            msg.setFrom(new InternetAddress(from));
	            InternetAddress[] toAddress = new InternetAddress[1];
	            
	            toAddress[0] = new InternetAddress(email);
	            
	            msg.setRecipients(Message.RecipientType.TO, toAddress);
	            msg.setSubject(subject, "UTF-8");    
	            msg.setText(body, "UTF-8");
	            msg.saveChanges();
	            
	            transport.sendMessage(msg, msg.getAllRecipients());
	            
	            
	        } catch (NoSuchProviderException e) {
	            e.printStackTrace();
	        } catch (MessagingException e) {
	            e.printStackTrace();
	        }
	    }
	    
	    

		public static int getPort() {
			return port;
		}



		public static void setPort(int port) {
			EmailHelper.port = port;
		}



		public static String getServer() {
			return server;
		}



		public static void setServer(String server) {
			EmailHelper.server = server;
		}



		public static String getFrom() {
			return from;
		}



		public static void setFrom(String from) {
			EmailHelper.from = from;
		}



		public static String getUser() {
			return user;
		}



		public static void setUser(String user) {
			EmailHelper.user = user;
		}



		public static String getPassword() {
			return password;
		}



		public static void setPassword(String password) {
			EmailHelper.password = password;
		}
	    
	    
	    
	
	
}
