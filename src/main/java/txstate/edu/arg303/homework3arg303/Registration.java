/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package txstate.edu.arg303.homework3arg303;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author Austin's NetBeans
 */
public class Registration implements Serializable
{

    private String userName;
    private String courseNumber;
    private Date registrationDate;
    private int duration;

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    
    public Registration(String userName, String courseNumber, int duration, Date registrationDate) 
    {
        this.userName = userName;
        this.courseNumber = courseNumber;
        this.registrationDate = registrationDate;
        this.duration = duration;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCourseNumber() {
        return courseNumber;
    }

    public void setCourseNumber(String courseNumber) {
        this.courseNumber = courseNumber;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }
    
    
}
