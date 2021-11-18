/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package txstate.edu.arg303.homework3arg303;

import java.io.Serializable;

/**
 *
 * @author Austin's NetBeans
 */
public class Course implements Serializable
{
    private String courseNumber;
    private String courseName;
    private double price;

    
    public String getCourseNumber() {
        return courseNumber;
    }

    public void setCourseNumber(String courseNumber) {
        this.courseNumber = courseNumber;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public Course(String courseNumber, String courseName, double price) {
        this.courseNumber = courseNumber;
        this.courseName = courseName;
        this.price = price;
    }
    
}
