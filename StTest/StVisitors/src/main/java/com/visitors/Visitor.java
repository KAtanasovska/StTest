package com.visitors;


import javax.persistence.*;

import java.security.Timestamp;


/**
 * Created by Kristinata on 7/23/2016.
 */
@Entity
@DiscriminatorValue("Visitor")
public class Visitor {
    @Id
    @GeneratedValue
    private int id;
    @Column(name = "firstName")
    private String firstName;
    @Column(name = "lastName")
    private String lastName;
    @Column(name = "idNumber")
    private String idNumber;
    @Column(name = "arriveDate")
    private String arriveDate;
    @Column(name = "leaveDate")
    private String leaveDate;

    public Visitor() {
    }

    public Visitor(String firstName, String lastName, String idNumber, String arriveDate, String leaveDate) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.idNumber = idNumber;
        this.arriveDate = arriveDate;
        this.leaveDate = leaveDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(String arriveDate) {
        this.arriveDate = arriveDate;
    }

    public String getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(String leaveDate) {
        this.leaveDate = leaveDate;
    }

}
