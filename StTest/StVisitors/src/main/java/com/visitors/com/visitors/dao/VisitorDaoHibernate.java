package com.visitors.com.visitors.dao;

import com.visitors.Visitor;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by Kristinata on 7/23/2016.
 */
@Repository
public class VisitorDaoHibernate implements VisitorDao {

    private SessionFactory sessionFactory;
    @Autowired
    public VisitorDaoHibernate(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }



    @Override
    public void addVisitor(Visitor visitor) throws SQLException {
         Session session = sessionFactory.openSession();
            Transaction tx = null;
        int count = ((Long)session.createQuery("select count(*) from Visitor where id=" + visitor.getId()+ "").uniqueResult()).intValue();
        System.out.println("rezultatot e " + count);
        if(count==0) {
            try {
                tx = (Transaction) session.beginTransaction();
                session.save(visitor);
                tx.commit();
            } catch (RuntimeException e) {
                if (tx != null) {
                    tx.rollback();
                }
            } finally {
                session.close();
            }
        }else{
            editVisitor(visitor);
        }


        }

    @Override
    public void editVisitor(Visitor visitor){
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.update(visitor);
        tx.commit();
        session.close();

    }


    @Override
    public void deleteVisitor(Visitor visitor) {
        Session session = sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.delete(visitor);
        tx.commit();
    }

    @Override
    public List<Visitor> getVisitors() {
        Session session = this.sessionFactory.openSession();
        String hql = "FROM Visitor";
        Query query = session.createQuery(hql);
        List<Visitor> results = query.list();
        return results;

    }

    @Override
    public void deleteVisitorById(int id) {
        Visitor visitor = new Visitor();
        visitor.setId(id);
        deleteVisitor(visitor);

    }
}
