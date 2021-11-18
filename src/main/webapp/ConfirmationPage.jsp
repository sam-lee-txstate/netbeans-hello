<%-- 
    Document   : ConfirmationPage
    Created on : Nov 1, 2021, 5:16:41 PM
    Author     : Austin's NetBeans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${Member.userName} - Confirmation Page</title>
    </head>
    
    <body>
        
        <h2 style="color:darkblue">---- Course Registration Confirmation ----</h2>
        <p style="color:darkblue">Thank you, <b>${Registration.userName}</b>. Your time of registration 
            was recorded <br>at <b>${Registration.registrationDate}</b>.</p>
        <!--
        <table> 
                <tr> 
                    <td style="text-align:left;"><b>User Name:</b></td>
                    <td style="text-align:right;">  ${Registration.userName}</td>
                </tr>
                <tr> 
                    <td style="text-align:left;"><b>Registration Date:</b></td>
                    <td style="text-align:right;">  ${Registration.registrationDate}</td>
                </tr>
        </table>
        -->
        
        <table>
                <tr>
                    <td style="text-align:left;"><b>Course Number:</b></td>
                    <td style="text-align:right;">  ${Registration.courseNumber}</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Course Name:</b></td>
                    <td style="text-align:right;">  ${Course.courseName}</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Cost Per Day:</b></td>
                    <td style="text-align:right;">  &#36; ${Course.price}0</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Duration:</b></td>
                    <td style="text-align:right;">  ${Registration.duration} days</td>
                </tr>
                <tr>
                    <td style="text-align:left;"><b>Total Payment:</b></td>
                    <td style="text-align:right;">  &#36; ${Registration.duration*Course.price}0</td>
                </tr>
                <tr>
                    <td style="text-align:left"><a href="CourseCatalog.jsp">BACK TO COURSES</a></td>
                </tr>
            </table>
                
    </body>
    
</html>
