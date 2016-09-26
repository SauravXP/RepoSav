<%-- 
    Document   : tabform2
    Created on : Jul 12, 2016, 3:15:33 PM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Bootstrap Vertical Tabs</title>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/tabform.css">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/tabformagt.css">
<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/latest/css/bootstrap.css" />
 
<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />    


<style>
  
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
  
.subdiv{
position:relative; top: 50px; right:-50px;
}

/*<!--panel title -->*/
.panel-title {
  margin-top: -2px;
  margin-bottom: 1px;
  font-size: 11px;
  color: inherit;

  > a,
  > small,
  > .small,
  > small > a,
  > .small > a {
    color: inherit;
  }
}


</style>
    </head>
    <body>
      
<!--<div class="panel panel-default" style="height:1150px; padding: 50px; margin: 130px"> -->
<div class="panel panel-default" style="height:1150px; padding: 50px; margin: 130px">
    <div id="Tabs" role="tabpanel" style="padding-top:0.01px">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a href="#personal" aria-controls="personal" role="tab" data-toggle="tab">
                Personal Info</a></li>
            <li><a href="#employment" aria-controls="employment" role="tab" data-toggle="tab">Other Details</a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content" style="padding-top: 15px">
            <div role="tabpanel" class="tab-pane active" id="personal">
             Agent's Personal Details
                <hr>
        <form method="Post" action="AgtDtlCont.gar" name="frmAgtDetails">
           <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="agentcode">Agentcode</label>
            <div class="col-sm-1"><input type="text" name="agcode" class="agtput" id="agentcode" required="" placeholder="AgentCode">
                <span class="help-block"></span>
            </div>
            
            </div>
           
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="branch">Branch</label>
            <div class="col-sm-1"><input type="text" name="branch" class="agtput" id="branch" placeholder="Branch">
                <span class="help-block"></span>
            </div>
            </div>      
            
                
           <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="name">Name</label>
            <div class="col-sm-1"><input type="text" name="name" class="agtput" id="name" placeholder="Full Name">
                <span class="help-block"></span>
            </div>
            </div>           
             
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="nepname">NepName</label>
            <div class="col-sm-1"><input type="text" name="nepname" class="agtput" id="nepname" placeholder="NepaliName">
                <span class="help-block"></span>
            </div>
            </div>      
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="dob">DOB</label>
            <div class="col-sm-6"><input type="text" name="dob" class="agtput" id="dob" placeholder="DateOfBirth">
                <span class="help-block"></span>
            </div>
         </div>
                
                
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="gender">Gender</label>
            <div class="form-group col-xs-8 ">
            <select class="form-control  " >
                <option value="" selected="selected" id="gender" class="selt" >Gender</option>
              <option value="M">Male</option>
              <option value="F">Female</option>
            </select>
             <span class="help-block"></span>
        </div> 
         
        </div>      
                
     <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="address">Address</label>
            <div class="col-sm-6"><input type="text" name="addres" class="agtput" id="address" placeholder="Address">
                <span class="help-block"></span>
            </div>
         </div>
    
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="anchal">Anchal</label>
            <div class="form-group col-xs-8 ">
            <select class="form-control selt input-group" >
                <option value="" selected="selected" id="anchal" class="selt" >Anchal</option>
              <option value="M">Mechi</option>
              <option value="K">Koshi</option>
            </select>
             <span class="help-block"></span>
        </div> 
        </div>  
                
       <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="district">District</label>
            <div class="form-group col-xs-8 ">
            <select class="form-control selt input-group" >
                <option value="" selected="selected" id="district" class="selt" >District</option>
              <option value="M">Mechi</option>
              <option value="K">Koshi</option>
            </select>
             <span class="help-block"></span>
        </div> 
        </div>           
    
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="location">Location</label>
            <div class="form-group col-xs-8 ">
            <select class="form-control selt input-group" >
                <option value="" selected="selected" id="location" class="selt" >Location</option>
              <option value="C">City</option>
              <option value="MC">Metro City</option>
              <option value="M">Municipality</option>
              <option value="V">VDC</option>
            </select>
             <span class="help-block"></span>
        </div> 
        </div>
              
      
     <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="quali">Qualification</label>
            <div class="col-sm-6"><input type="text" name="quali" class="agtput" id="quali" placeholder="Qualification">
                <span class="help-block"></span>
            </div>
         </div>           
                
     <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="phone">Phone</label>
            <div class="col-sm-6"><input type="text" name="phone" class="agtput" id="phone" placeholder="Phone">
                <span class="help-block"></span>
            </div>
         </div>
     
    <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="Mobile">Moblie</label>
            <div class="col-sm-6"><input type="text" name="mobile" class="agtput" id="mobile" placeholder="Mobile">
                <span class="help-block"></span>
            </div>
    </div> 
    
 <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="occ">Occupation</label>
            <div class="col-sm-6"><input type="text" name="occ" class="agtput" id="occu" placeholder="Occupation">
                <span class="help-block"></span>
            </div>
    </div>  

<div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="isds">IsDocumentSubmitted</label>
            <div class="col-sm-6"><input type="text" name="isds" class="agtput" id="isds" placeholder="If Document Submitted">
                <span class="help-block"></span>
            </div>
    </div>             
                
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="fax">Fax</label>
            <div class="col-sm-6"><input type="text" name="fax" class="agtput" id="fax" placeholder="Fax">
                <span class="help-block"></span>
            </div>
         </div>
                
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="email">Email</label>
            <div class="col-sm-6"><input type="text" name="email" class="agtput" id="email" placeholder="Email@..">
                <span class="help-block"></span>
            </div>
         </div> 
         
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 level font" for="muni">Municipility</label>
            <div class="col-sm-6"><input type="text" name="muni" class="agtput" id="muni" placeholder="Municipility">
                <span class="help-block"></span>
            </div>
         </div>        
            </div>
            <div role="tabpanel" class="tab-pane" id="employment">
        Details Required for Organizational Purpose:
        <hr>
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small " for="regdate">Registered Date</label>
            <div class="col-sm-6 small"><input type="text" name="regdate" class="agtput" id="muni" value="10/24/1984">
                <span class="help-block"></span>
            </div>
         <!--   <div class = "panel" style='margin-right: 105px'>
   <div class = "panel-heading">
      <h4 class = "panel-title">Nominee Information</h3>
   </div>
   
   <div class = "panel-heading">
                    <div class="form-group col-xs-12">
            <label class="control-label col-sm-6 level font" for="nname">N.Name</label>
            <div class="col-sm-6"><input type="text" name="nname" class="agtput" id="nname" placeholder="Nominee Name">
                <span class="help-block"></span>
            </div>
                    </div>
   </div>
</div> -->
        
         
         </div>
             
        
        
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="lic">LicenseNo:</label>
            <div class="col-sm-6 small"><input type="text" name="licno" class="agtput" id="lic" placeholder="License No">
                <span class="help-block"></span>
            </div>
         </div>
               
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="licex">License ExpiryDate</label>
            <div class="col-sm-6 small"><input type="text" name="licex" class="agtput" id="licex" placeholder="License ExpiryDate">
                <span class="help-block"></span>
            </div>
         </div>
               
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="renewD">Renewal Date</label>
            <div class="col-sm-6 small"><input type="text" name="renewD" class="agtput" id="renewD" placeholder="License Renewal Date">
                <span class="help-block"></span>
            </div>
         </div>
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="sts">Status</label>
            <div class="col-sm-6 small"><input type="text" name="sts" class="agtput" id="sts" placeholder="Status.">
                <span class="help-block"></span>
            </div>
         </div>       
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small " for="acno">Acconut Number </label>
            <div class="col-sm-6 small"><input type="text" name="acno" class="agtput" id="acno" placeholder="Bank A\c No">
                <span class="help-block"></span>
            </div>
         </div>
               
   <!--     <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small " for="bnkname">Bank Name</label>
            <div class="col-sm-6 small"><input type="text" name="bnkname" class="agtput" id="bnkname" placeholder="Bank Name">
                <span class="help-block"></span>
            </div>
         </div> -->
               
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="licfrom">License From</label>
            <div class="col-sm-6 small"><input type="text" name="licfrom" class="agtput" id="licfrom" placeholder="License Taken From">
                <span class="help-block"></span>
            </div>
         </div>
               
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="copym">Comm.Pay.Mode</label>
            <div class="col-sm-6 small"><input type="text" name="copym" class="agtput" id="copym" placeholder="Mode of Payment Of Commission">
                <span class="help-block"></span>
            </div>
         </div>
               
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="compty">Commission.Pay Type:</label>
            <div class="col-sm-6 small"><input type="text" name="compty" class="agtput" id="compty" placeholder="Commission Payment Type">
                <span class="help-block"></span>
            </div>
         </div>
        
               <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small " for="subr">Sub Branch</label>
            <div class="col-sm-6 small"><input type="text" name="subr" class="agtput" id="subr" placeholder="Sub Branch">
                <span class="help-block"></span>
            </div>
         </div>
               
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small" for="comrem">Comment/Remarks</label>
            <div class="col-sm-6 small"><input type="text" name="comrem" class="agtput" id="comrem" placeholder="Comment your Remarks">
                <span class="help-block"></span>
            </div>
         </div> 
        <hr>
         Nominee:-
        <hr>      
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small " for="nom">Nominee</label>
            <div class="col-sm-6 small"><input type="text" name="nom" class="agtput" id="nom" placeholder="Nominee..Name">
                <span class="help-block"></span>
            </div>
         </div> 
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small font" for="rel">No:Relation</label>
            <div class="col-sm-6 small"><input type="text" name="rel" class="agtput" id="rel" placeholder="relation">
                <span class="help-block"></span>
            </div>
         </div>
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 small font" for="nadd">Address</label>
            <div class="col-sm-6 small"><input type="text" name="nadd" class="agtput" id="rel" placeholder="Nom..Address">
                <span class="help-block"></span>
            </div>
         </div>
         DeathInCase:-
        <hr>      
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2 level font" for="ddate">Death Date</label>
            <div class="col-sm-6"><input type="text" name="ddate" class="agtput" id="ddate" value="10/24/1984">
                <span class="help-block"></span>
            </div>
         </div> 
        Relate Supervisor:-
        <hr>      
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="bdcode">Level1</label>
            <div class="col-sm-6 small"><input type="text" name="bdcode" class="agtput" id="bdcode" value="ajaxinput">
                <span class="help-block"></span>
            </div>
         </div> 
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="bmcode">Level2</label>
            <div class="col-sm-6 small"><input type="text" name="bmcode" class="agtput" id="bmcode" value="ajaxinput">
                <span class="help-block"></span>
            </div>
         </div> 
        
         AgentSelfDesignation:-
        <hr>      
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="issoff">IsOfficer</label>
            <div class="col-sm-6 small"><input type="text" name="issoff" class="agtput" id="bdcode" value="">
                <span class="help-block"></span>
            </div>
         </div> 
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="isMang">IsManager</label>
            <div class="col-sm-6 small"><input type="text" name="isMang" class="agtput" id="bmcode" value="">
                <span class="help-block"></span>
            </div>
         </div> 
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="issoffQ">OfficerQualifyDate</label>
            <div class="col-sm-6 small"><input type="text" name="issoffQ" class="agtput" id="issoffQ" value="">
                <span class="help-block"></span>
            </div>
         </div> 
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-1 small " for="isMangQ">ManagerQualifyDate</label>
            <div class="col-sm-6 small"><input type="text" name="isMangQ" class="agtput" id="isMangQ" value="">
                <span class="help-block"></span>
            </div>
         </div> 
        
        
        
        <!-- Nominee Panel Start from here -->
           <div class="col-md-5" style="margin-top: -530px; margin-left: 550px; " >
				<div class="panel panel-primary ">
                                    <div class="panel-heading clearfix" style="height:25px;">
						<h4 class="panel-title pull-center ">Nominee Information</h4>
					<!--	<div class="btn-group btn-group-xs pull-right">
							<a href="#" class="btn btn-success"><span
								class="glyphicon glyphicon-plus"></span></a> <a href="#"
								class="btn btn-danger"><span
								class="glyphicon glyphicon-minus"></span></a>
						</div> -->
						<div class="clearfix"></div>
					</div>
					<div class="panel-body">
            <!--STARTForTextBox-->          
            
                      <label class="control-label col-sm-2 small"  >Nomineename</label>
                     <input type="text" name="nname" class="form-control input-sm" id="nname" placeholder="Nominee Name">
                
                          <span class="help-block"></span>
        
                        <label class="control-label col-sm-2 small" for="rel"  >Relation</label>     
                        <input type="text" name="rel" class="form-control input-sm" id="rel" placeholder="Relation">  
                    </div>
            </div>
            <div class="form-group col-xs-3">
                      <label  for="rel"  >Relation</label>
                      <div class="col-sm-6 "><input type="text" name="rel" class="" id="rel" placeholder="Relation">
                <span class="help-block"></span>
                        </div>
                    </div>
            <!-- for text box -->
               
           
				</div>
			</div>             <!-- Nominee Panel END here -->
        
                        </hr>
                      <div class="form-group col-xs-6">
                     <button type="submit" class="btn btn-success" type="submit">Save</button>
                     <button type="reset" class="btn btn-danger" type="reset" >Cancel</button>
                     <span class="help-block"></span>
                      
                    </div>
                        </form>      
            </div>
            
            
            
            
        </div>
        
         
        
    </div>
   
<!--</div> -->

    
<script type="text/javascript">
$(function() {
    $('input[name="regdate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
$(function(){
  $('input[name="dob"]').daterangepicker({
      singleDatePicker:true,
      showDropdowns: true
  }
          
                );  
});
$(function(){
  $('input[name="ddate"]').daterangepicker({
      singleDatePicker:true,
      showDropdowns: true
  }
          
                );  
});
</script>

    
</body>
</html>
