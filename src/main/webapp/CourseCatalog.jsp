<%-- 
    Document   : CourseCatalog
    Created on : Nov 1, 2021, 5:15:48 PM
    Author     : Austin's NetBeans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${Member.userName} - Course List</title>
    </head>
    
    <body>
        
        <h2 style="color:darkblue">----------------- Our Course Selection -----------------</h2>
        
        <table>
                <tr>
                    <td><b>Course # &nbsp;&nbsp;</b></td>
                    <td><b>Course Name</b></td>
                    <td><b>Cost Per Day</b></td>
                </tr>
            <c:forEach var="cc" items="${Catalog}"> 
                <tr>
                    <td style="text-align:center;">${cc.courseNumber}  &nbsp;</td>
                    <td>${cc.courseName}    &nbsp;</td>
                    <td style="text-align:center;">&#36; ${cc.price}0 &nbsp;</td> 
                    <td style="text-align:center;"> <a href="SelectServlet?code=${cc.courseNumber}" > Select Course </a>
                </tr> 
                
            </c:forEach>
        </table>
        
    </body>
    
</html>
