<%-- 
    Document   : omanPowerDetails
    Created on : Aug 1, 2016, 9:40:58 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
     <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
      <link rel="stylesheet" href="../bootstrap/agt/daterangepicker.css">
      <script type="text/javascript" src="../bootstrap/js/jquery-1.11.2.min.js"> </script>      
      <script type="text/javascript" src="../bootstrap/agt/moment.min.js"> </script>
      <script type="text/javascript" src="../bootstrap/agt/daterangepicker.js"> </script>    
        
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
            <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-3">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center "><strong style="font-style: oblique;">Man-Power-Details</strong></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            
                            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mpid">Man-Power ID:</label>
            <div class="col-sm-1 small"><input type="text" name="mpid" class="agtput" id="agentcode" required="" placeholder="ManPower-ID">
                <span class="help-block"></span>
            </div>
            
                        </div>
                         
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mpname">Name:-</label>
            <div class="col-sm-1 small"><input type="text" name="mpname" class="agtput" id="agentcode" required="" placeholder="mpname">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="npname">Nepali-Name</label>
            <div class="col-sm-1 small"><input type="text" name="npname" class="agtput" id="npname" required="" placeholder="नेपाली नाम">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="maddr">Address</label>
            <div class="col-sm-1 small"><input type="text" name="maddr" class="agtput" id="maddr" required="" placeholder="Address...">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mpno">PhoneNO</label>
            <div class="col-sm-1 small"><input type="text" name="mpno" class="agtput" id="mpno" required="" placeholder="Phone No">
                <span class="help-block"></span>
            </div>
            </div>                
            
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mmno">MobileNo</label>
            <div class="col-sm-1 small"><input type="text" name="mmno" class="agtput" id="mmno" required="" placeholder="Mobile No">
                <span class="help-block"></span>
            </div>
            </div> 
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="memail">Email-</label>
            <div class="col-sm-1 small"><input type="text" name="memail" class="agtput" id="memail" required="" placeholder="Email--">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mfax">FaxNo-</label>
            <div class="col-sm-1 small"><input type="text" name="mfax" class="agtput" id="mfax" required="" placeholder="FaxNo">
                <span class="help-block"></span>
            </div>
            </div>                  
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mcper">Contact Person</label>
            <div class="col-sm-1 small"><input type="text" name="mcper" class="agtput" id="mcper" required="" placeholder="Contact Person">
                <span class="help-block"></span>
            </div>
            </div> 
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="mdeg">Designation</label>
            <div class="col-sm-1 small"><input type="text" name="mdeg" class="agtput" id="mdeg" required="" placeholder="Designation">
                <span class="help-block"></span>
            </div>
            </div>
                            <div class="form-group">
                                <input type="text" name="first_name" id="first_name" class="form-control input-sm" placeholder="Remarks">
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
