package com.visitors;

import com.visitors.com.visitors.dao.VisitorDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Scanner;

/**
 * Created by Kristinata on 7/25/2016.
 */
@Service
public class TestDbClass implements CommandLineRunner {
    VisitorDao visitorDao;

    @Autowired
    TestDbClass(VisitorDao visitorDao) {
        this.visitorDao = visitorDao;
    }

    public void useDatabase() {
        System.out.println("Choose the number of the action you want");
        Scanner scanner = new Scanner(System.in);
        int action = 0;
        while (action != 3) {
            System.out.println("1 - add. \n2 - List. \n3 - Exit");
            try {
                action = Integer.parseInt(scanner.nextLine());
                switch (action) {
                    case 1: {

                        System.out.println("Insert your first name, last name id card number arrive time leave time");

                        String fName = scanner.nextLine();
                        String lName = scanner.nextLine();
                        String idCard = scanner.nextLine();
                        String arrive = scanner.nextLine();
                        String leave = scanner.nextLine();

                        Visitor visitor = new Visitor(fName, lName, idCard, arrive, leave);
                        try {
                        visitorDao.addVisitor(visitor);
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }

                       // visitor.setLastName("edited");
                       // System.out.println("the last name should be edited");
                       // visitorDao.editVisitor(visitor);
                       // visitorDao.deleteVisitor(visitor);
                        //visitorDao.deleteVisitorById(16);

                        break;
                    }


                    case 2: {

                        listVisitors();

                        break;
                    }

                }
            } catch (NumberFormatException e) {
                System.out.println("Please input 1,2 or 3 ");
            }
        }
        scanner.close();
        System.out.println("bye");
        System.exit(0);

    }

    public void listVisitors() {
        List<Visitor> results = null;

        results = visitorDao.getVisitors();
        for (Visitor visitor : results) {

            System.out.println("first name" + visitor.getFirstName() + " " + visitor.getLastName() + " " + visitor.getIdNumber() + " " + visitor.getArriveDate() + " " + visitor.getLeaveDate());


        }

    }
    public void run(String... strings) throws Exception {
        useDatabase();
    }
}


