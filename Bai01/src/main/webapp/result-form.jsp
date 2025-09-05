<%@ page import="iuh.fit.se.nguyenhuynhngochai_22687251_tuan03.model.Student" %><%--
  Created by IntelliJ IDEA.
  User: Student
  Date: 9/5/2025
  Time: 8:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result submit</title>
</head>
<body>
    <%
        Student student=new Student();
        student=(Student)request.getAttribute("student");
        out.print("First name:"+student.getFirstName()
                + "<br/> Last name: "+student.getLastName()
                + "<br/> Email: "+student.getEmail()
                +"<br/> Gender: "+student.getGender()
                +"<br/> Birthday: "+student.getBirthday()
        );
    %>
</body>
</html>
