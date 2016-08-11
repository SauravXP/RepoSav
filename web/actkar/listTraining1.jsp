<%-- 
    Document   : listTraining
    Created on : Aug 6, 2016, 8:26:02 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.util.*"%> 
<%@page import="com.mvc.doa.TraingDaoImplement"%>
<%@page import="com.mvc.bean.AgentTrainingSchedule"%>
<jsp:useBean id="gt" class="com.mvc.doa.TraingDaoImplement"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%
        TraingDaoImplement tdi=new TraingDaoImplement();
            //tdi.getallTrainings();
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <table>
        <thead>
            <tr>
                <th>T.ID</th>
                <th>Branch</th>
                <th>Venue</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th colspan="2">Action</th>
            </tr> 
        </thead>
        <tbody>
          <%--  <%
                List lst=gt.getallTrainings();
                System.out.println(lst);
            %> --%>
          <c:forEach items="${Trainings}" var="train">
                <tr>  <!-- datas from bean(AgentTrainingSchedule.java) -->
                    <td><c:out value="${train.trainingID}" /></td>
                    <td><c:out value="${train.branch}" /></td>
                    <td><c:out value="${train.venue}" /></td>
                    <td><c:out value="${train.stdate}" /></td>
                    <td><c:out value="${train.eddate}" /></td>
                    <td><c:out value="${train.remarks}" /></td>
                    <td><a
                        href="TrainingScheduleCont.gar?action=edit&trainingID=<c:out value="${train.trainingID }"/>">Update</a></td>
                    <td><a
                        href="TrainingScheduleCont.gar?action=delete&trainingID=<c:out value="${train.trainingID }"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </tbody>
              <p>
        <a href="TrainingScheduleCont.gar?action=insert">Add Training</a>
    </p>
    </table>
    </body>
</html>
