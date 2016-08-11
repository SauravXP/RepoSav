<%-- 
    Document   : tabform1
    Created on : Jun 28, 2016, 1:28:54 PM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link class="cssdeck" rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" class="cssdeck">
        <link rel="stylesheet" href="../css/tabformagt.css" type="text/css"/>
        <style>
.form-multiline .form-group {
    margin-bottom: 15px;
    margin-right: 30px;
}
.form-multiline label,
.form-multiline .form-control {
    margin-right: 15px;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
<div class="" id="loginModal">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3>Have an Account?</h3>
	</div>
	<div class="modal-body">
		<div class="well">
			<ul class="nav nav-tabs">
				<li class="active"><a href="#login" data-toggle="tab">Personal Info</a></li>
				<li><a href="#create" data-toggle="tab">Org's-Info</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane active in" id="login">
					<form class="form-horizontal" action='' method="POST">
						<fieldset>
							<div id="legend">
								<legend class="">Details</legend>
							</div>    
							<div class="control-group">
								<!-- Username -->
								<label class="control-label col-md-3"  for="username">Username</label>
								<div class="controls">
									<input type="text" id="username" name="username" placeholder="" class=" form-control col-md-3">
								</div>
							</div>
							
							<div class="control-group">
								<!-- Password-->
								<label class="control-label col-md-3" for="password">Password1</label>
								<div class="controls">
									<input type="password" id="password" name="password" placeholder="" class=" form-control col-md-3">
								</div>
							</div>
                                                    
 
                                                    
    <div class="control-group">
   <label class="control-label " for="firstname">First Name</label>
   <div class="controls">
   <input type="text" id="firstname" class="input-group col-md-3" name="firstname" placeholder="FNAME"/>
   </div>
</div>                                                

<div class="control-group">
   <label class="control-label " for="firstname">LAST Name</label>
   <div class="controls">
       <input type="text" id="firstname" class="input-group col-md-7" name="firstname" placeholder="FNAME"/>
   </div>
</div>                                                                                                    
                                                    
                                                    
							
    <div class="form-group">
           <label class="control-label"  for="username">Username</label> 
        <div class="col-xs-3 text-right">&nbsp;</div>
        <div class="col-xs-3">
            <input type="text" class="form-control" placeholder="State" />
        </div>
        <div class="col-xs-3">
            <input type="text" class="form-control" placeholder="City" />
        </div>
        <div class="col-xs-3">
            <input type="text" class="form-control" placeholder="Zip" />
        </div>
    </div>

     <div class="form-group">
    <label class="form-control col-md-2 ">YES:</label>
    <div class="input-group col-md-7">
      <input class="form-control" type="text">
      <span class="input-group-addon">m</span>
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-md-3">Y:</label>
    <div class="input-group col-md-7">
      <input class="form-control" type="text">
      <span class="input-group-addon">m</span>
    </div>
  </div>
  <div class="form-group">
      <label class="control-label col-md-3">&nbsp;Z:</label>
    <div class="input-group col-md-7">
      <input class="form-control" type="text">
      <span class="input-group-addon">:) </span>
    </div>
  </div>                                                
							<div class="control-group">
								<!-- Button -->
								<div class="controls">
									<button class="btn btn-success">Login</button>
								</div>
							</div>
						</fieldset>
					</form>                
				</div>
				<div class="tab-pane fade" id="create">
					<form id="tab">
						<label>Username</label>
						<input type="text" value="" class="input-xlarge">
						<label>First Name</label>
						<input type="text" value="" class="input-xlarge">
						<label>Last Name</label>
						<input type="text" value="" class="input-xlarge">
						<label>Email</label>
						<input type="text" value="" class="input-xlarge">
						<label>Address</label>
						<textarea value="Smith" rows="3" class="input-xlarge">
						</textarea>
						
						<div>
							<button class="btn btn-primary">Create Account</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
    
<div class="container">
  <form class="form form-inline form-multiline" role="form">

    <legend>Form legend</legend>

    <div class="form-group">
      <label for="InputFieldA">Field A</label>
      <input type="text" class="form-control" id="InputFieldA" placeholder="InputFieldA">
    </div>

    <div class="form-group">
      <label for="InputFieldB">Very Long Label For Field B</label>
      <input type="text" class="form-control" id="InputFieldB" placeholder="InputFieldB">
    </div>

    <div class="form-group">
      <label for="InputFieldC">F. C</label>
      <input type="text" class="form-control" id="InputFieldC" placeholder="InputFieldC">
    </div>

    <div class="form-group">
      <label for="InputFieldD">Very Long Label For Field D</label>
      <input type="text" class="form-control" id="InputFieldD" placeholder="InputFieldD">
    </div>

    <div class="form-group">
      <label for="InputFieldE">Very Long Label For Field E</label>
      <input type="text" class="form-control" id="InputFieldE" placeholder="InputFieldE">
    </div>

    <div class="form-group">
      <label for="InputFieldF">Field F</label>
      <input type="text" class="form-control" id="InputFieldF" placeholder="InputFieldF">
    </div>

    <div class="form-group">
      <button type="submit" class="btn btn-default">Submit Button</button>
    </div>

  </form>
</div>     

    
    
    
    </body>
    
    
    <script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script class="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    
</html>
