<%-- 
    Document   : CourseSelected
    Created on : Nov 1, 2021, 5:16:03 PM
    Author     : Austin's NetBeans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${Member.userName} - Course Selected</title>
    </head>
    <body>
        <h2 style="color:darkblue">Thank you <u>${Member.userName}</u> <br>You have selected this course:</h2>
        
      <form action="BuyServlet">
            <table> 
                <tr> 
                    <td style="text-align:left;"><b>Course Number:</b></td>
                    <td style="text-align:right;">  ${Course.courseNumber}</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Course Name:</b></td>
                    <td style="text-align:right;">  ${Course.courseName}</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Cost Per Day:</b></td>
                    <td style="text-align:right;">  &#36; ${Course.price}0</td>
                </tr>
            </table>
            
                <h3 style="color:darkblue">Please enter how many days you will want to <br>take this course:</h3>    
                
            <table>
                <tr>
                    <td style="text-align:left;"><b>Duration (in days):</b></td>
                    <td><input style="text-align:right" type ="text" name="dura"></td>
                </tr>
                
                <tr>
                    <td><a href="CourseCatalog.jsp">Back To Course Selection</a></td>
                    <td style="text-align:right;"><input type="submit" name="submit" value ="submit"></td>
                </tr>
                
            </table>
                
              
        </form>
                

    </body>
</html>
