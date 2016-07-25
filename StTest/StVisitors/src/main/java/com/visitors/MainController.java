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

      public Visitor addVisitors(@RequestBody String [] niza) throws SQLException {
          Visitor visitor = new Visitor(niza[0],niza[1],niza[2],niza[3],niza[4]);
          visitorDao.addVisitor(visitor);
          return visitor;
      }


/*
    @CrossOrigin(origins = "http://localhost:63342")
    @RequestMapping(value="/Visitors/edit", method = RequestMethod.POST)
    public Visitor updateVisitors(@RequestBody Visitor visitor) throws SQLException {
        visitorDao.editVisitor(visitor);
        return visitor;
    }
*/
/*
    @CrossOrigin(origins = "http://localhost:63342")
    @RequestMapping(method = RequestMethod.POST)
    public int deleteVisitors(@RequestBody int id) throws SQLException {
        visitorDao.deleteVisitorById(id);
        return id;
    }
*/
}