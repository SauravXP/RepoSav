<%-- 
    Document   : agentTrainning
    Created on : Jul 30, 2016, 9:17:46 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.bean.AgentTrainingSchedule" %>
  <%@page import="com.mvc.doa.TraingDaoImplement"%>
<%@page import="com.mvc.bean.AgentTrainingSchedule"%>
<jsp:useBean id="gt" class="com.mvc.doa.TraingDaoImplement"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>                     
<%  
   // AgentTrainingSchedule ats=new AgentTrainingSchedule();
    String tid="";
    String brn="";
    String venu="";
    String stdate="";
    String endate="";
    String remark="";
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../agt/daterangepicker.css">
      <script type="text/javascript" src="../js/jquery-1.11.2.min.js"> </script>      
      <script type="text/javascript" src="../agt/moment.min.js"> </script>
      <script type="text/javascript" src="../agt/daterangepicker.js"> </script>

     
<!--<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script> -->
<!--<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/latest/css/bootstrap.css" /> -->
 
<!-- Include Date Range Picker -->
<!-- <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
     --> 
      
      <style>
#container1 {
    background-color: #e2dada;
}

.centered-form {
    margin-top: 120px;
    margin-bottom: 120px;
}

.centered-form .panel {
    background: rgba(255, 255, 255, 0.8);
    box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}

.form-group
   {
      margin-bottom: 0.01px !important; /* change it as per your requirment */
    } 
    
     .agtput input[type="text"] {
   height: 10px;
   font-size: 10px;
   line-height: 12px;
-webkit-border-radius: 4px;
    -moz-border-radius: 4px ;
    border-radius: 4px ;
    border-width: 5px 0px 5px 0px;
    padding: 8px;
     }   
.selt select[type="selected"]{
     height: 25px;
   font-size: 12px;
   line-height: 25px;

}
.level font{
    font-size:12px;
    font:medium;
}
</style>       
        
    </head>
    <body>
     <div class="container" id="container1">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center "><strong>Agent Training Schedule</strong></h3>
                    </div>
                    <div class="panel-body">
                        
                   
                        <form role="form" method="POST" action="TrainingScheduleCont.gar">
                     
                            <div class="form-group col-xs-12">
                                <label class="control-label col-sm-4 small" for="tid">Training ID:<sup>*</sup></label>
            <div class="col-sm-1 small"><input type="text" name="tid" class="agtput" id="tid" required="" Value="<c:out value="${train.trainingID}" />" placeholder="Training ID">
                <span class="help-block"></span>
            </div>
            
                        </div>
                         
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="brn">Branch</label>
            <div class="col-sm-1 small"><input type="text" name="brn" class="agtput" id="brn" required="" Value="<c:out value="${train.branch}" />" placeholder="Branch">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="venu">Training Venue</label>
            <div class="col-sm-1 small"><input type="text" name="venu" class="agtput" id="venu" value="<c:out value="${train.venue}" />" required="" placeholder="Venue">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="stdate">Start Date</label>
            <div class="col-sm-1 small"><input type="text" name="stdate" class="agtput" id="stdate" value="<c:out value="${train.stdate}" />" required="" placeholder="01/01/2016">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="endate">End Date</label>
            <div class="col-sm-1 small"><input type="text" name="endate" class="agtput" id="endate"  value="<c:out value="${train.eddate}" />" placeholder="01/01/2017">
                <span class="help-block"></span>
            </div>
            </div>                
                            
                            
                            <div class="form-group">
                                <input type="text" name="remark" id="remark"  value="<c:out value="${train.remark}" />" class="form-control input-sm" placeholder="Remarks">
                            </div>

                            

                    <!--        <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="password" name="password" id="password" class="form-control input-sm" placeholder="Password">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="password" name="password_confirmation" id="password_confirmation" class="form-control input-sm" placeholder="Confirm Password">
                                    </div>
                                </div>
                            </div> -->
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="Submit" name="save" id="save" class="form-control btn-sm btn-success">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-md-6">
                                    <div class="form-group">
                                        <input type="reset" name="cancel" id="cancel" Value="Cancel" class="form-control btn-sm btn-danger" >
                                    </div>
                                </div>
                            </div>
                        <!--    <input type="submit" value="Register" class="btn btn-info btn-block"> -->
                     
                   </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
        
        
        <script type="text/javascript">
$(function() {
    $('input[name="stdate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function() {
    $('input[name="endate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
</script>
        
    </body>
</html>
