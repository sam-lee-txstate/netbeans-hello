<%-- 
    Document   : WelcomePage
    Created on : Nov 1, 2021, 5:15:25 PM
    Author     : Austin's NetBeans
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    
    <body>
        <h2 style="color:darkblue">---- Welcome Padawan ----</h2>
        <h2 style="color:darkblue">Please enter your username <br>and email:</h2>
        
        <form action="LoginServlet">
            
            <table> 
                <tr> 
                    <td style="text-align:left;">User Name:</td>
                    <td><input type="text" name="uname"></td>
                </tr>
                <tr>
                    <td style="text-align:left;">Email Address:</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td></td>
                    <td style="text-align:right;"><input type="submit" name="submit" value ="submit"></td>
                </tr>
            </table>
            
        </form>
        
    </body>
</html>
