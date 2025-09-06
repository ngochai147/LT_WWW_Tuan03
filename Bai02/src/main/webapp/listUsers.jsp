<%@ page import="iuh.fit.se.bai02.model.User" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 06/09/2025
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head><title>User List</title></head>
<body>
<h2>Registered Users</h2>
<table border="1">
    <tr>
        <th>First Name</th><th>Last Name</th><th>Email</th><th>Birthday</th><th>Gender</th>
    </tr>
    <%
        List<User> users = (List<User>) request.getAttribute("userList");
        for(User u : users){
    %>
    <tr>
        <td><%=u.getFirstname()%></td>
        <td><%=u.getLastname()%></td>
        <td><%=u.getEmail()%></td>
        <td><%=u.getBirthday()%></td>
        <td><%=u.getGender()%></td>
    </tr>
    <% } %>
</table>
</body>
</html>

