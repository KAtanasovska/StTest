package com.visitors;

import com.visitors.com.visitors.dao.VisitorDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


/**
 * Created by Kristinata on 7/23/2016.
 */
@RestController
@RequestMapping("/index")
public class MainController {
    @Autowired
    VisitorDao visitorDao;


    @RequestMapping(method = RequestMethod.GET)
    public List<Visitor> getVisitors() {
        return visitorDao.getVisitors();
    }

    @RequestMapping(method = RequestMethod.POST)
    public Visitor addVisitor(@RequestBody Visitor visitor){
        visitorDao.addVisitor(visitor);
        return visitor;
    }


}