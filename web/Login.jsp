<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Web Login Page</title>
	<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'/>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
        <link href="css/font-awesome.min.css" rel="stylesheet"/>
    <link href="css/login.css" rel="stylesheet"/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <!-- FORM VALIDATION SCRIPT> -->
    <script>
$(document).ready(function() {
    $('#loginform').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'The username can only consist of alphabetical, number, dot and underscore'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    }
                }
            }
        }
    });
});
</script>
    <style type="text/css">
#loginform .has-error .control-label,
#loginform .has-error .help-block,
#loginform .has-error .form-control-feedback {
    color: #f39c12;
}

#loginform .has-success .control-label,
#loginform .has-success .help-block,
#loginform .has-success .form-control-feedback {
    color: #18bc9c;
}
</style>
    
  </head>		
   


	<body>
		<div class="container">

                    <%@ include file="templates/ads.jsp" %>
			<h1>Login Here</h1>
                        <div class="login-form">

                            <%@ include file="templates/message.jsp"%>
                            <h1 class="text-center">Access Login</h1>
                            <div class="form-header">
                                <i class="fa fa-user"></i>
                            </div>
			<form  class=form-signin id="loginform"   action="LoginServlet" method="post" name="login" role="form">

                                    <input name="username" id="username" type="text" class="form-control" placeholder="User Name" autofocus></input>
                                    <input name="password" id="password" type="password" class="form-control" placeholder="Password"></input>
                                    <button name="submit" class="btn btn-block bt-login" type="submit" id="submit_btn" data-loading-text="Signing In....">Sign in</button>
                        </form>
                            <div class="form-footer">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <i class="fa fa-lock"></i>
                                        <a href="forget_password.jsp">Forgot Password</a>
                                    </div>
                                    
                                    <div class="col-xs-6 col-sm-6 col-md-6">
                                        <i class="fa fa-check"></i>
				<a href="registration.jsp">SignUp</a>
                                    </div>  
				</div>
                            </div>
                        </div>
                </div> <!--container-->        
                        
   <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<script type="text/javascript" src="design/js/unitpngfix.js"></script>
<script type="text/javascript" src="design/js/bootstrap.js"></script>
<script type="text/javascript" src="design/js/bootstrap.min.js"></script>      


	</body>
    
<!--     <?php require_once 'templates/footer.php';?> -->
<%@include file="templates/footer.jsp" %>
</html>