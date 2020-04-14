package common;

import javax.servlet.annotation.WebListener;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionLifeListener implements HttpSessionListener {

    public SessionLifeListener() {
    }

    public void sessionCreated(HttpSessionEvent se)  { 
    	System.out.println("세션생성");
    	
    }

    public void sessionDestroyed(HttpSessionEvent se)  { 
    	System.out.println("세션제거");
    }
	
}
