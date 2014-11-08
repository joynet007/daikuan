package com.daikuan.util.email;

import java.util.Date;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



/**   
 * @author: joynet007@163.com
 * @date 2014-11-1 下午12:03:40
 * @Description:这个类的主要作用是处理邮件信息的发送， 系统在启动的时候自动初始化 发送邮件的的端口、地址、用户等初始的参数配置。
 */
public class EmailHelper {

	    private static  int port ;
	    private static  String server ;//邮件服务器（新浪）
	    private static  String from ;//发送者
	    private static  String user ;//发送者地址
	    private static  String password;//密码
	    
	    
	    /**
	     * 
	    * @Title: sendEmail 
	    * @Description:  这个方法主要用于发送邮件，参数包括接受邮件的地址、邮件的主题、邮件的内容
	    * @param @param email  接收者邮箱
	    * @param @param subject 标题
	    * @param @param body    内容
	    * @return void    返回类型    
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
