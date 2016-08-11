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


<!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/latest/css/bootstrap.css" />
 
<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />    





<script type="text/javascript">
            $(function () {
                $('#datetimepicker').datetimepicker();
            });
        </script>
<style>
  
   .form-group
   {
      margin-bottom: 0.01px !important; /* change it as per your requirment */
    } 
    
     .agtput input[type="text"] {
   height: 15px;
   font-size: 10px;
   line-height: 15px;
-webkit-border-radius: 4px;
    -moz-border-radius: 4px ;
    border-radius: 4px ;
    border-width: 5px 0px 5px 0px;
    padding: 10px;
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
      
<div class="panel panel-default" style="height:1150px; padding: 50px; margin: 130px">
    <div id="Tabs" role="tabpanel" style="padding-top:0.01px">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a href="#personal" aria-controls="personal" role="tab" data-toggle="tab">
                Personal</a></li>
            <li><a href="#employment" aria-controls="employment" role="tab" data-toggle="tab">Employment</a></li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content" style="padding-top: 15px">
            <div role="tabpanel" class="tab-pane active" id="personal">
                This is Personal Information Tab
                <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="agentcode">Agentcode</label>
            <div class="col-sm-6"><input type="text" name="agcode" class="agtput" id="agentcode" required="" placeholder="AgentCode">
                <span class="help-block"></span>
            </div>
            </div>
           
          <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="branch">Branch</label>
            <div class="col-sm-6"><input type="text" name="branch" class="agtput" id="branch" placeholder="Branch">
                <span class="help-block"></span>
            </div>
            </div>      
            
                
           <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="name">Name</label>
            <div class="col-sm-8"><input type="text" name="fname" class="agtput" id="name" placeholder="Full Name">
                <span class="help-block"></span>
            </div>
            </div>           
             
         <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="name">NepName</label>
            <div class="col-sm-6"><input type="text" name="nepname" class="agtput" id="name" placeholder="NepaliName">
                <span class="help-block"></span>
            </div>
            </div>      
        <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="name">DOB</label>
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
                <option value="" selected="selected" id="gender" class="selt" >Anchal</option>
              <option value="M">Mechi</option>
              <option value="F">Koshi</option>
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
              <option value="F">Koshi</option>
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
               This is Employment Information Tab
               <hr class="active">
               <div class="form-group col-xs-12">
            <label class="control-label col-sm-2" for="regd">Agentcode</label>
            <div class="col-sm-6"><input type="text" name="regd" class="agtput" id="regd" required="regd" Value="10/10/1984">
                <span class="help-block"></span>
            </div>
            </div>
               
            </div>
        </div>
    </div>
</div>

        <script type="text/javascript">
            $(function () {
                $('#regd').datetimepicker();
            });
        </script>
    </body>
</html>
