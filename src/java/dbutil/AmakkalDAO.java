package dbutil;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

public class AmakkalDAO {
    
    private HibernateTemplate ht;

    public void setHt(HibernateTemplate ht) {
        this.ht = ht;
    }
    
    @Transactional(readOnly=false)
    public void createData(Object obj) {
        ht.save(obj);
    }
    
    @Transactional(readOnly=false)
    public void updateData(Object obj) {
        ht.update(obj);
    }
    
    @Transactional(readOnly=false)
    public void deleteData(Object obj) {
        ht.delete(obj);
    }
    
    @Transactional(readOnly=false)
    public List readData(String query) {
        List data = null;
        
        SessionFactory sf = ht.getSessionFactory();
        Session ses = sf.openSession();
        Transaction t = ses.beginTransaction();
        Query q = ses.createQuery(query);
        data = q.list();
        
        return data;
    }
    
}
