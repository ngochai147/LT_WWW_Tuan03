<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 06/09/2025
  Time: 12:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.fmt" prefix="fmt" %>
<fmt:setLocale value="${languageCode}" scope="session" />
<fmt:setBundle basename="resource" scope="session" />
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 8px rgba(0,0,0,0.2);
        }
        table {
            width: 100%;
        }
        td {
            padding: 5px;
        }
    </style>
</head>
<body>
<c:set var="languageCode" value="${param.radLanguageCode}"></c:set>
<c:if test="${not empty languageCode}">
    <fmt:setLocale value="${languageCode}" scope="session"/>
</c:if>
<fmt:setBundle basename="test" scope="session"/>
<div class="container">
    <form method="post" action="bai03.jsp">
        <fieldset>
            <fmt:message key="languageMessage"></fmt:message>

            <input type="radio" name="radLanguageCode" value="vi"
                   <c:if test="${languageCode=='vi'}">checked </c:if>
            /><fmt:message key="vn"></fmt:message>
            <input type="radio" name="radLanguageCode" value="en"
                   <c:if test="${languageCode=='en'}">checked</c:if>
            /><fmt:message key="en"></fmt:message>
            <input type="submit" name="submit" value="<fmt:message key="chooseButton"> </fmt:message>">
        </fieldset>
        <br/>
        <fieldset>
            <table>
                <tr>
                    <td><fmt:message key="userName"></fmt:message></td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td><fmt:message key="pass"></fmt:message></td>
                    <td><input type="password" name="password"/></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="submit" value="<fmt:message key="login"></fmt:message>"/>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</div>
</body>
</html>

