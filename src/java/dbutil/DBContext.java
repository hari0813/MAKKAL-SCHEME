package dbutil;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DBContext {
    
    public static AmakkalDAO getContext() {
        
        ApplicationContext ac = new ClassPathXmlApplicationContext("dbutil/springconfig.xml");
        AmakkalDAO kkcas = (AmakkalDAO)ac.getBean("h5");
        return kkcas;
    }
}
