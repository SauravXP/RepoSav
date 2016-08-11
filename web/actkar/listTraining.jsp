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
   <!--     <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../agt/dataTables.bootstrap.min.css"/> -->
        
                <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
                <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>
                <script type="text/javascript" src="/js/jquery-1.11.2.min.js"> </script>
        <script type="text/javascript" src="/agt/dataTables.bootstrap.min.js"> </script>
        <script type="text/javascript" src="/agt/dataTables.responsive.min.js"> </script>
        <style>
           
            .table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}   
.table-striped-column > tbody > tr td:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-striped-column > tbody > tr td:nth-of-type(even) {
    background-color: #f9f9f9;
}
        </style>

    </head>
    <body>
        <div class="content">
            <div class="container">
                <h1 class="text-center">.
                </h1>
        <div class="table-responsive">
    <table id="dtTrainDetails" class="table table-hover table-inverse table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>T.ID</th>
                <th>Branch</th>
                <th>Venue</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th >Remarks</th>
                <th >Operation</th>
            </tr>
            
        </thead>
        <tfoot>
            <tr>
                <th>T.ID</th>
                <th>Branch</th>
                <th>Venue</th>
                <th>StartDate</th>
                <th>EndDate</th>
                <th >Remarks</th>
                <th >Operation</th>
            </tr>
            
        </tfoot>
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
                    <td><a  class="btn btn-success" href="TrainingScheduleCont.gar?action=edit&trainingID=<c:out value="${train.trainingID }"/>">Update</a>||<a
                  class="btn btn-danger" href="TrainingScheduleCont.gar?action=delete&trainingID=<c:out value="${train.trainingID }"/>">Delete</a></td>
                 <!--   <td><a href="TrainingScheduleCont.gar?action=delete&trainingID=<c:out value="${train.trainingID }"/>">Delete</a></td> -->
                </tr>
            </c:forEach>
        </tbody>
              <p>
        <a href="TrainingScheduleCont.gar?action=insert">Add Training</a>
    </p>
    </table>
        </div><!--div table responsive END -->
            </div>
        </div>
        <script>
            $(document).ready(function() {
    $('#dtTrainDetails').DataTable();
} );
        </script>
    </body>
    
</html>