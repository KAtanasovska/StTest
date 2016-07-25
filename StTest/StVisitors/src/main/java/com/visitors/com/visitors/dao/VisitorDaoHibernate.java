package com.visitors.com.visitors.dao;

import com.visitors.Visitor;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
    public void addVisitor(Visitor visitor) {
        Session session = this.sessionFactory.openSession();
        Transaction tx = session.beginTransaction();
        session.persist(visitor);
        tx.commit();
        session.close();
    }

    @Override
    public void deleteVisitor(Visitor visitor) {

    }

    @Override
    public List<Visitor> getVisitors() {
        Session session = this.sessionFactory.openSession();
        String hql = "FROM Visitor";
        Query query = session.createQuery(hql);
        List<Visitor> results = query.list();
        return results;

    }
}
