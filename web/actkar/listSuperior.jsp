<%-- 
    Document   : listSuperior
    Created on : Sep 6, 2016, 10:51:47 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.bean.AgentSuperiorsB" %>
<%@page import="com.mvc.doa.AgentSuperiorsDaoImplement"%>
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
        
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
                <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css"/>
                <script type="text/javascript" src="/js/jquery-1.11.2.min.js"> </script>
        <script type="text/javascript" src="/agt/dataTables.bootstrap.min.js"> </script>
        <script type="text/javascript" src="/agt/dataTables.responsive.min.js"> </script>
        <script type="text/javascript" src="../js/bootstrap.min.js"></script>

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
    <table id="dtTrainDetails" class="table table-hover table-inverse table-striped table-bordered" cellspacing="0"  width="100%">
        <thead>
                <th>Code</th>
                <th>Category</th>
                <th>Branch</th>
                <th>Name</th>
                <th>Address</th>
                <th >PersonalAgt.Code</th>
                <th >QualifyDate</th>
                <th >RenewalDate</th>
                <th >Status</th>
                <th >Phone</th>
            </tr>
            
        </thead>
        <tfoot>
            <tr>
                <th>Code</th>
                <th>Category</th>
                <th>Branch</th>
                <th>Name</th>
                <th>Address</th>
                <th >PersonalAgt.Code</th>
                <th >QualifyDate</th>
                <th >RenewalDate</th>
                <th >Status</th>
                <th >Phone</th>
            </tr>
            
        </tfoot>
        <tbody>
          <%--  <%
                List lst=gt.getallTrainings();
                System.out.println(lst);
            %> --%>
          <c:forEach items="${supers}" var="sup">
                <tr >  <!-- datas from bean(AgentTrainingSchedule.java) -->
                    <td><c:out value="${sup.Code}" /></td>
                    <td><c:out value="${sup.Category}" /></td>
                    <td> ${sup.Branch} </td>
                    <td><c:out value="${sup.Name}" /></td>
                    <td><c:out value="${sup.Address}" /></td>
                    <td>"${sup.AgentCode}"</td>
                    <td>"${sup.QualifyDate}"</td>
                    <td>"${sup.RenewalDate}"</td>
                    <td>"${sup.Status}"</td>
                    <td>"${sup.Phone}"</td>
                    <td><button class="btn btn-success" onclick="if(!confirm('Do you want to Update the Data ?')) return false;"><a href="AgtSuperCont.gar?action=edit&Code=<c:out value="${sup.Code }"/> ">Update</a></button>||<button class="btn btn-danger"  name="remove_levels" onclick="if(!confirm('Do you want to Delete the Data ?')) return false;"><a href="AgtSuperCont.gar?action=delete&Code=<c:out value="${sup.Code }"/>">Delete</a></button> </td>
                    <td><a  class="btn btn-success" href="AgtSuperCon.gar?action=edit&Code=<c:out value="${sup.Code}"/>">Update</a>||<a
                  name="remove_levels" id="delete" class="btn btn-danger"  href="AgtSuperCon.gar?action=delete&Code=<c:out value="${sup.Code }"/>">Delete</a></td>
                
                </tr>
            </c:forEach>
        </tbody>
              <p>
        <a href="AgtSuperCont.gar?action=insert">Add Superiors</a>
    </p>
    </table>
        </div><!--div table responsive END -->
        
        <!-- START FOR MODAL   -->
        <div id="confirm" class="modal hide fade">
            <div class="modal-body">
                Are you sure?
            </div>
            <div class="modal-footer">
                <button type="button" data-dismiss="modal" class="btn btn-primary" id="delete">Delete</button>
                <button type="button" data-dismiss="modal" class="btn">Cancel</button>
            </div>
        </div>
        <!-- END FOR MODAL -->
        
        
        
            </div>
        </div>
          
          <script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
          <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.1.0/js/dataTables.responsive.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/responsive/2.1.0/js/responsive.bootstrap.min.js"></script>
            <script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="//code.jquery.com/jquery-1.12.3.js"></script>
         <script type="text/javascript" src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
        <script>





$(document).ready(function() {
    $('#dtTrainDetails').DataTable( {
        responsive: {
            details: {
                display: $.fn.dataTable.Responsive.display.modal( {
                    header: function ( row ) {
                        var data = row.data();
                        return 'Details for '+data[0]+' '+data[1];
                    }
                } ),
                renderer: $.fn.dataTable.Responsive.renderer.tableAll( {
                    tableClass: 'table'
                } )
            }
        }
    } );
} );


    <%-- FOR DELETE CONFIRM --%>
    $('#confirm').modal({ backdrop: 'static', keyboard: false })
        .one('click', '#delete', function (e) {
            $form.trigger('submit');
        });







        </script>
    </body>
</html>
