<%--
  Created by IntelliJ IDEA.
  User: pande
  Date: 9/8/2023
  Time: 2:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>Customer RelationShip Manager</h2>
        </div>
    </div>
    <div id="container">
        <div id="content">
<%--            Put New Button :: Add Customer--%>
            <input type='button' value='Add Customer'
                   onclick="window.location.href='form'; return false;"
                   class="add-button">
            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
                    <c:forEach var="customer" items="${customers}">
                        <c:url var="updateLink" value="/customer/update">
                            <c:param name="id" value="${customer.id}"/>
                        </c:url>
                        <c:url var="deleteLink" value="/customer/delete">
                            <c:param name="id" value="${customer.id}"/>
                        </c:url>
                <tr>
                    <td>${customer.firstName}</td>
                    <td>${customer.lastName}</td>
                    <td>${customer.email}</td>
                    <td>
                        <a href="${updateLink}">Update</a> |
                        <a href="${deleteLink}"
                           onclick="if(!(confirm('Delete this Record from Database Permanpermanently ?'))) return false;">Delete</a>
                    </td>
                </tr>
                    </c:forEach>
            </table>
        </div>
    </div>


</body>
</html>
