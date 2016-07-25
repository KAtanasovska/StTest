package com.visitors;

import com.visitors.com.visitors.dao.VisitorDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.sql.SQLException;
import java.util.List;


/**
 * Created by Kristinata on 7/23/2016.
 */
@RestController
@RequestMapping("/Visitors")
public class MainController {
    @Autowired
    VisitorDao visitorDao;

    @CrossOrigin(origins = "http://localhost:63342")
    @RequestMapping(method = RequestMethod.GET)
    public List<Visitor> getVisitors() {
        return visitorDao.getVisitors();
    }
    @CrossOrigin(origins = "http://localhost:63342")
    @RequestMapping(method = RequestMethod.POST)
    public Visitor addVisitor(@RequestBody Visitor visitor) throws SQLException {
        visitorDao.addVisitor(visitor);
        return visitor;
    }


}