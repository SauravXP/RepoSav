<%-- 
    Document   : updateTrain
    Created on : Aug 30, 2016, 4:17:53 AM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.doa.TraingDaoImplement"%>
<%@page import="com.mvc.bean.AgentTrainingSchedule"%>
<jsp:useBean id="gt" class="com.mvc.doa.TraingDaoImplement"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="DataView?action=views">
            <input type="text" name="tid" placeholder="Traiing ID"><br>
            <input type="text" name="Venue" placeholder="Venue"><br>
        <input type="text" name="stdate"><br>
        <input type="text" name="eddate"><br>
        <button class="btn btn-success">Search</button>
        </form>
        
        <%
            String tid=request.getParameter("tid");
            String ven=request.getParameter("Venu");
            String stdate=request.getParameter("stdate");
            String eddate=request.getParameter("eddate");
            %>
            <c:forEach items="ALLTRAIN" var="train">
                <c:out value="${train.trainingID}" />
                <c:out value="${train.ven}" />
                <c:out value="${train.stdate}" />
            </c:forEach>
    </body>
</html>
