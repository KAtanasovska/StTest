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
            try{
                tx = (Transaction) session.beginTransaction();
                session.save(visitor);
                tx.commit();
            }catch(RuntimeException e){
                if(tx != null){tx.rollback();}
            }finally{
                session.close();
            }

        }

    @Override
    public void editVisitor(Visitor visitor){
        Session session = sessionFactory.openSession();
        /*String hql = "UPDATE Visitor set firstName = :firstName; set lastName = :lastName; set idNumber = :idNumber; set arriveDate = :arriveDate; set leaveDate = :leaveDate)"  +
                "WHERE id = :id";
        Query query = session.createQuery(hql);
        query.setParameter("firstName", visitor.getFirstName());
        query.setParameter("lastName", visitor.getLastName());
        query.setParameter("idNumber", visitor.getIdNumber());
        query.setParameter("arriveDate", visitor.getArriveDate());
        query.setParameter("leaveDate", visitor.getLeaveDate());
        query.setParameter("id", visitor.getId());
        query.executeUpdate();
        */
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
