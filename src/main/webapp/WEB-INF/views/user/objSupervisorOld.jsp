<%--
  Created by IntelliJ IDEA.
  User: krzysztof
  Date: 18.05.2021
  Time: 14:40
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Assign objective</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
</head>
<c:import url="/WEB-INF/views/homepage/header.jsp"/>
<form method="post" action="/supervisor">


    <body>
    <table>
        <tr>
            <th> Assigned task for ${user}:</th>
        </tr>
        <tr>
            <td>

                <c:forEach items="${user.objectives}" var="item" varStatus="status">
                    <input name="objectiveOldStatus" type="hidden" value="${item.id}">
                    ${item.name}
                    <br>
                    ${item.description}
                    <br>
                    From:
                    ${item.startDate} ${item.startHour}
                    <br>
                    Till:
                    ${item.endDate} ${item.endHour}
                    <br>
                    Objective status:
                    <br>
                    <c:forEach items="${item.taskStatus}" var="el">
                        ${el}
                        <br>
                    </c:forEach>
                    <br>
                    <select name="taskStatusNew">
                        <c:forEach items="${taskStatusAll}" var="taskStatus">
                            <option> ${taskStatus}</option>
                        </c:forEach>
                    </select>
                    <br>
                    ----------------------------
                    <br>
                </c:forEach>

            </td>
        </tr>
        <%--        <tr>--%>
        <%--            <td>--%>
        <%--                <select name="taskStatusNew">--%>
        <%--                    działa--%>
        <%--                    <c:forEach items="${taskStatusAll}" var="taskStatus">--%>
        <%--                    <option> ${taskStatus}</option>--%>
        <%--                    </c:forEach>--%>
        <%--            </td>--%>
        <%--        </tr>--%>
        <%--        <tr>--%>
        <td>
            <button type="submit"> Confirm</button>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </td>
        </tr>
    </table>
    <a href="<c:url value="/"/>">return to homepage</a>
    </body>
</form>
<c:import url="/WEB-INF/views/homepage/footer.jsp"/>
</html>
