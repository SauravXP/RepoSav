<%-- 
    Document   : datetime
    Created on : Jul 18, 2016, 12:18:16 PM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/tabform.css">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/tabformagt.css">
<link rel="stylesheet" href="../css/bootstrap-datetimepicker.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script type="text/javascript">
            $(function () {
                $('#datetimepicker').datetimepicker();
            });
        </script>
       <script>
    $(document).ready(function(){
        var date_input=$('input[name="date"]'); //our date input has the name "date"
        var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        })
    })
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
    
.date-form { margin: 10px; }
label.control-label span { cursor: pointer; }


</style>        
    </head>
    <body>
   <div class="bootstrap-iso">
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-6 col-sm-6 col-xs-12">

    <!-- Form code begins -->
    <div class="date-form">
    
<div class="form-horizontal">
    <div class="control-group">
        <label for="date-picker-1" class="control-label">A <span class="glyphicon glyphicon-calendar"> </span>

        </label>
        <div class="controls">
            <input id="date-picker-1" type="text" class="date-picker form-control" />
        </div>
    </div>
    <div class="control-group">
        <label for="date-picker-2" class="control-label">B</label>
        <div class="controls">
            <div class="input-group">
                <input id="date-picker-2" type="text" class="date-picker form-control" />
                <label for="date-picker-2" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>

                </label>
            </div>
        </div>
    </div>
    <div class="control-group">
        <label for="date-picker-3" class="control-label">C</label>
        <div class="controls">
            <div class="input-group">
                <label for="date-picker-3" class="input-group-addon btn"><span class="glyphicon glyphicon-calendar"></span>

                </label>
                <input id="date-picker-3" type="text" class="date-picker form-control" />
            </div>
        </div>
    </div>
</div>
    
    <hr />
<div>
    <span id="msg" class="controls form-control uneditable-input"></span>
</div>
</div>
     <!-- Form code ends --> 

    </div>
  </div>    
 </div>
</div>
The .containe
    </body>
</html>
