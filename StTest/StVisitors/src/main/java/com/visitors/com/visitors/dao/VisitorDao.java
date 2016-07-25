package com.visitors.com.visitors.dao;

import com.visitors.Visitor;

import java.util.List;

/**
 * Created by Kristinata on 7/23/2016.
 */
public interface VisitorDao {
    public void addVisitor(Visitor visitor);
    public void deleteVisitor(Visitor visitor);
    public List<Visitor> getVisitors();
}
