<%-- 
    Document   : dateinput1
    Created on : Jul 19, 2016, 12:42:41 PM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
        <!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/latest/css/bootstrap.css" />
 
<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />    
    </head>
    <body>
        <input type="text" name="birthdate" value="10/24/1984" />
        
        <script type="text/javascript">
$(function() {
    $('input[name="birthdate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
    } 
    );
});
</script>
    </body>
</html>
