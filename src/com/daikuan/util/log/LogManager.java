package com.daikuan.util.log;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Properties;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
public class LogManager
{
		private static final String config="/log/log4j.properties";
		public static Logger log_exp=Logger.getLogger("exp");
		
		
		private String logPath;//日志存放路径
		public void setLogPath(String logPath)
		{
				this.logPath = logPath;
		}
		
		public String getLogPath() {
			return logPath;
		}



		public void init()
		{
				try
				{
						if(logPath!=null)
						{
							File f=new File(logPath);
							f.mkdirs();
						}
						if(config!=null)
						{
							Properties syscfg = new Properties();
			                InputStream is = null;
			                try
			                {
			                        is = this.getClass().getResourceAsStream(config);
			                        syscfg.load(is);
			                        
			                        Enumeration<?> keys = syscfg.keys();
			                        while (keys.hasMoreElements())
			                        {
			                        		String key = (String) keys.nextElement();
			                        		if(".file".equals(key.substring(key.length()-5)))
			                        		{
			                        			syscfg.setProperty(key,logPath+syscfg.getProperty(key));
			                        		}
			                        		else if(key.length()>18 && ".ConversionPattern".equals(key.substring(key.length()-18)))
			                        		{
			                        				syscfg.setProperty(key,"================================start===============================%n"
			                        												+syscfg.getProperty(key)
			                        									  +"================================end=================================%n%n%n");
			                        		}
			                        }
			                }			                
			                catch (RuntimeException re)
			                {
			                		re.printStackTrace();
			                }
			                catch (IOException ie)
			                {
			                		ie.printStackTrace();
			                }
			                finally
			                {
			                        if (is != null)
			                        {
			                                try 
			                                { 
			                                	is.close(); 
			                                } 
			                                catch (IOException ie)
			                                {
			                                	ie.printStackTrace();
			                                }
			                        }
			                }
							
							PropertyConfigurator.configure(syscfg);
						}
				}
				catch(Exception e)
				{
						e.printStackTrace();
				}
		}
		
		
}