<%-- 
    Document   : adminUserControl
    Created on : Jul 28, 2016, 3:24:57 PM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <body>
    <div class="container" id="container1">
        <div class="row centered-form">
         <!--   <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">-->
         <div class="col-xs-12 col-sm-8 col-md-7 col-sm-offset-3">
                <div class="panel panel-default panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center "><strong>User SetUp Details</strong></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            
                            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="spcode">Superiors Code:</label>
            <div class="col-sm-1 small"><input type="text" name="spcode" class="agtput" id="spcode" required="" placeholder="Superiors Code">
                <span class="help-block"></span>
            </div>
            
                        </div>
             
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="UserID">UserID</label>
            <div class="col-sm-1 small"><input type="text" name="UserID" class="agtput" id="UserID" required="" placeholder="UserID">
                <span class="help-block"></span>
            </div>
            </div>                
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="UserName">UserName</label>
            <div class="col-sm-1 small"><input type="text" name="UserName" class="agtput" id="UserName" required="" placeholder="UserName">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Group">Group</label>
            <div class="col-sm-1 small"><input type="text" name="Group" class="agtput" id="Group" required="" placeholder="Group">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Password">Password</label>
            <div class="col-sm-1 small"><input type="text" name="Password" class="agtput" id="Password" required="" placeholder="Password">
                <span class="help-block"></span>
            </div>
            </div>
                            
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="CreatedDeate">CreatedDate</label>
            <div class="col-sm-1 small "><input type="text" name="CreatedDeate" class="agtput" id="CreatedDeate" required="" placeholder="01/01/2012">
                <span class="help-block"></span>
            </div>
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
                                        <input type="Submit" name="save" id="save" Value="SAVE" class="form-control btn-sm btn-success">
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
    $('input[name="sqfdt"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function() {
    $('input[name="srnldt"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});


        </script>
    </body>
</html>
