<%-- 
    Document   : Register
    Created on : Nov 12, 2019, 6:23:53 PM
    Author     : JJ
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:include page="Navbar.jsp"/>
        <form action="process.jsp">  
            <input type="text" name="fname" value="fname" onclick="this.value = ''"/><br/>  
            <input type="text" name="lname"  value="lname" onclick="this.value = ''"/><br/> 
            <input type="text" name="email"  value="email" onclick="this.value = ''"/><br/>  
            <input type="text" name="username"  value="username" onclick="this.value = ''"/><br/>  
            <input type="password" name="password"  value="password" onclick="this.value = ''"/><br/>  
            <input type="submit" value="register"/>  
        </form>  
    </body>
</html>
