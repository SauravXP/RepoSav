<%-- 
    Document   : proposal
    Created on : Aug 24, 2016, 4:39:48 PM
    Author     : saurav.paudel
--%>

<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
<%--    <jsp:useBean id="obj" scope="page" class="com.mvc.doa.CommonDaoImplements" /> --%>
    <body>
       <div class="container" id="container1">
        <div class="row centered-form">
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-4">
                <div class="panel panel-default panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center "><strong>Details</strong></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            
                            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="tid">AgentCode:</label>
            <div class="col-sm-1 small"><input type="text" name="agtcode" class="agtput" id="agtcode" required="" placeholder="AgentCode">
                <span class="help-block"></span>
            </div>
            
                        </div>
             
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="tid">Training-ID</label>
            <div class="col-sm-1 small"><input type="text" name="tid" class="agtput" id="tid" required="" placeholder="TID">
                <span class="help-block"></span>
            </div>
            </div>                
          
                      <%--      <jsp:useBean id="lists" class="com.mvc.doa.CommonDaoImplements" scope="page"></jsp:useBean>              --%>
            <%--                <%
                                
                                System.out.println("ANCHAL:-"+obj.getAllAnchal1());
                            %>     --%>
           <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Anchal">Anchal</label>
            <div class="col-sm-4">
                <jsp:useBean id="objs" scope="page" class="com.mvc.doa.CommonDaoImplements" /> 
                <%
                    ResultSet rst;
                    rst=objs.getAllAnchal1();
                    %>
                <select name="Anchal" class="col-sm-12 large" id="Anchal" onclick="" >
           <%--         <c:forEach var="Anch" items="${ANCH.Anchal}">
                    <option name="">{Anch.Anchal}</option>
                </c:forEach>   --%>
           <option  value="" selected="selected" id="anch" class="selt" >-:Anchal:-</option>
           <%while(rst.next()) {%>
           
           <option Value="<%out.print(rst.getString("Anchal"));%>"><%out.print(rst.getString("Anchal"));%></option>
           <%}%>
           
            </select>
             <span class="help-block"></span>
            </div>
         </div> 
            
        
                            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="tfee">Training-Fee</label>
            <div class="col-sm-1 small"><input type="text" name="tfee" class="agtput" id="tfee" required="" placeholder="Fee">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="dds">Date-Doc.Send</label>
            <div class="col-sm-1 small"><input type="text" name="dds" class="agtput" id="dds" required="" placeholder="01/01/2016">
                <span class="help-block"></span>
            </div>
            </div>
                            
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="licsta">License Status</label>
            <div class="col-sm-1 small"><input type="text" name="licsta" class="agtput" id="licsta" required="" placeholder="License Status">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="lrdate">License-Received-Date</label>
            <div class="col-sm-1 small"><input type="text" name="lrdate" class="agtput" id="lrdate" required="" placeholder="01/01/2016">
                <span class="help-block"></span>
            </div>
            </div>                
                            
           <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="lsadate">Lic.-IssuedToAgtent-Date</label>
            <div class="col-sm-1 small"><input type="text" name="lsadate" class="agtput" id="lsadate" required="" placeholder="01/01/2016">
                <span class="help-block"></span>
            </div>
            </div> 
                            
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="agname">Name</label>
            <div class="col-sm-1 small"><input type="text" name="agname" class="agtput" id="agname" required="" placeholder="Name">
                <span class="help-block"></span>
            </div>
            </div>
                            
       <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="agnamen">NameInNepali</label>
            <div class="col-sm-1 small"><input type="text" name="agnamen" class="agtput" id="agnamen" required="" placeholder="नेपाली नाम">
                <span class="help-block"></span>
            </div>
            </div>
                            <div class="form-group">
                                <input type="text" name="remarks" id="remarks" class="form-control input-sm" placeholder="Remarks">
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
    </body>
</html>
