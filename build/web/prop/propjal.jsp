<%-- 
    Document   : propjal
    Created on : Aug 23, 2016, 7:27:10 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../agt/daterangepicker.css">
        <script type="text/javascript" src="..//js/jquery-1.11.2.min.js"> </script>      
        <script type="text/javascript" src="../agt/moment.min.js"> </script>
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
              <div class="col-xs-12 col-sm-8 col-md-7 col-sm-offset-3">
                <div class="panel panel-default panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center "><strong>Proposal Details</strong></h3>
                    </div>
                    <div class="panel-body">
                        <form role="form">
                            
                            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="pno">ProposalNo:</label>
            <div class="col-sm-1 small"><input type="text" name="ProposalNo" class="agtput" id="pno" required="" placeholder="ProposalNo">
                <span class="help-block"></span>
            </div>
            
                        </div>
             
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Branch">Branch</label>
            <div class="col-sm-1 small"><input type="text" name="Branch" class="agtput" id="Branch" required="" placeholder="Branch">
                <span class="help-block"></span>
            </div>
            </div>                
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Name">Name</label>
            <div class="col-sm-1 small"><input type="text" name="Name" class="agtput" id="Name" required="" placeholder="Name">
                <span class="help-block"></span>
            </div>
            </div>
            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Address">Address</label>
            <div class="col-sm-1 small"><input type="text" name="Address" class="agtput" id="Address" required="" placeholder="Address">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="DOB">DateOfBirth</label>
            <div class="col-sm-1 small"><input type="text" name="DOB" class="agtput" id="DOB" required="" placeholder="01/01/2016">
                <span class="help-block"></span>
            </div>
            </div>
                 
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Age">Age</label>
            <div class="col-sm-1 small"><input type="text" name="Age" class="agtput" id="Age" required="" placeholder="Age">
                <span class="help-block"></span>
            </div>
            </div>
                            
            <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Term">Term</label>
            <div class="col-sm-1 small"><input type="text" name="Term" class="agtput" id="Term" required="" placeholder="Term">
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
            <label class="control-label col-sm-4 small" for="Gender">Gender</label>
            <div class="col-sm-1 small"><input type="text" name="Gender" class="agtput" id="Gender" required="" placeholder="Gender">
                <span class="help-block"></span>
            </div>
            </div>
                            
       <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Country">Country</label>
            <div class="col-sm-1 small"><input type="text" name="Country" class="agtput" id="Country" required="" placeholder="Country">
                <span class="help-block"></span>
            </div>
            </div>
     <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="PassportNo">PassportNo</label>
            <div class="col-sm-1 small"><input type="text" name="PassportNo" class="agtput" id="PassportNo" required="" placeholder="PassportNo">
                <span class="help-block"></span>
            </div>
            </div> 
    <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="ManPowerCode">ManPowerCode</label>
            <div class="col-sm-1 small"><input type="text" name="ManPowerCode" class="agtput" id="PassportNo" required="" placeholder="ManPowerCode">
                <span class="help-block"></span>
            </div>
            </div> 
    <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="AgentCode">AgentCode</label>
            <div class="col-sm-1 small"><input type="text" name="AgentCode" class="agtput" id="PassportNo" required="" placeholder="AgentCode">
                <span class="help-block"></span>
            </div>
            </div>                         
    
    <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="SA">SumAssured</label>
            <div class="col-sm-1 small"><input type="text" name="SA" class="agtput" id="SA" required="" placeholder="SumAssured">
                <span class="help-block"></span>
            </div>
            </div>                         
<div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Premium">Premium</label>
            <div class="col-sm-1 small"><input type="text" name="Premium" class="agtput" id="Premium" required="" placeholder="Premium">
                <span class="help-block"></span>
            </div>
</div>

    <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="VisaDetails">VisaDetails</label>
            <div class="col-sm-1 small"><input type="text" name="VisaDetails" class="agtput" id="VisaDetails" required="" placeholder="VisaDetails">
                <span class="help-block"></span>
            </div>
</div>
<div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="NomineeName">NomineeName</label>
            <div class="col-sm-1 small"><input type="text" name="NomineeName" class="agtput" id="NomineeName" required="" placeholder="NomineeName">
                <span class="help-block"></span>
            </div>
</div> 
<div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="NomineeAddress">NomineeAddress</label>
            <div class="col-sm-1 small"><input type="text" name="NomineeAddress" class="agtput" id="NomineeAddress" required="" placeholder="NomineeAddress">
                <span class="help-block"></span>
            </div>
</div>
                            
 <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="NomineeRelation">NomineeRelation</label>
            <div class="col-sm-1 small"><input type="text" name="NomineeRelation" class="agtput" id="NomineeRelation" required="" placeholder="NomineeRelation">
                <span class="help-block"></span>
            </div>
</div>
 <div class="form-group col-xs-12">
            <label class="control-label col-sm-4 small" for="Employer">Employer</label>
            <div class="col-sm-1 small"><input type="text" name="Employer" class="agtput" id="Employer" required="" placeholder="Employer">
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

$(function() {
    $('input[name="dds"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function() {
    $('input[name="dds"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function() {
    $('input[name="lrdate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function() {
    $('input[name="lsadate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
        </script>
    </body>
</html>
