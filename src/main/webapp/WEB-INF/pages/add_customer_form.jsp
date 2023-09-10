<%--
  Created by IntelliJ IDEA.
  User: pande
  Date: 9/8/2023
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Register</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css"/>
</head>
<body>
<div id="wrapper">
    <div id="header">
        <h2>Customer RelationShip Manager</h2>
    </div>
</div>
<div id="container">
    <h1>Register Customer</h1>
    <form:form action="save" method="post" modelAttribute="customer" >
        <form:hidden path="id"/>
        <table>
            <tbody>
            <tr>
                <td>First Name</td>
                <td>
                    <form:input path="firstName"/>
                </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td>
                    <form:input path="lastName"/>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <form:input path="email"/>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit" class="save">
                </td>
            </tr>
            </tbody>

        </table>
    </form:form>
</div>
<div style="clear: both">
    <p>
        <a href="${pageContext.request.contextPath}/customer/list"> Back to List</a>
    </p>
</div>
</body>
</html>
