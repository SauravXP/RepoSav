<%-- 
    Document   : header
    Created on : Feb 23, 2016, 2:43:28 PM
    Author     : saurav.paudel
--%>

   <%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.bean.LoginBean"%>
<%@page import="java.util.*"%>

   <% 
        //HttpSession nsession=request.getSession(false);
        //HttpSession nsession=request.getSession();
       String nsession=(String)request.getAttribute("userName");
       // String nsession=(String)request.getAttribute("currentSessionUser");
        //String nsession=(String)session.getAttribute("userName");
        if(nsession!=null){
            String fname=(String)session.getAttribute("userName");
            out.println("<h1>WelCome</h1>"+fname);
        }
        else{
            //out.println("Session is not Active");
           // response.sendRedirect("Login.jsp");
            System.out.println("BY");
        }
        
        
    %> 

   


<html>
    <head>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="muni">
    <title>WEB APP</title>
	<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/stylemrqu.css" rel="stylesheet">
    <link href="css/thememrqu.css" rel="stylesheet">
    
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="../js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <link href="css/submenuA.css" rel="stylesheet">
    <script src="js/jquery.tickerNews.min.js"></script>

    <script src="js/jquery.marquee.js"></script>
    <script src="js/jquery.marquee.min.js"></script>
    
    
    
    
    <link rel="stylesheet" href="../css/tabform.css">
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="../css/tabformagt.css">
<!--<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script> -->
<!--<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>-->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />    


    
    <style>
     .marquee {
  width: 1010px;
  overflow: hidden;
  border: 1px solid #ccc;
  background: #91c448;
}    
    </style> 
  
    </head>

    <body>
           <!-- Static navbar -->
	<div role="navigation" class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" data-toggle="collapse"
					data-target=".navbar-collapse" class="navbar-toggle collapsed">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
        <a class="navbar-brand" rel="home" href="#" title="Buy/Sell Rent Everyting">
        <img style="max-width:100px; margin-top: -7px;"
             src="../img/transparent-white-logo.png">    
        </a>
                            
			</div>
        <%--			<?php 
			$url = explode("/",$_SERVER['REQUEST_URI']); 
			$uri = end( $url ); 
			
			?> --%>
        <% String uri=request.getParameter("g"); %>     
        <div class="collapse navbar-collapse">
	
            
            <ul class="nav navbar-nav">
                <li  class="active"> <%--<?php if($uri == 'home.php') echo "class='active'"; ?>--%> <a href="Home.jsp">Home</a></li>
	  
    <!-- START FOR MULTI-SUBMENU ABOUT US -->
            <ul class="nav navbar-nav">
                                        <!--Begin of AboutUS  -->
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">ABOUT US<span class="caret"></span></a>
                                            <ul role="menu" class="dropdown-menu">
                                                <li class="active"  <%--<?php if($uri=='OrgView.php') echo "class='active'";?>--%> ><a  href="OrgView.php" >Organization Overview</a></li>
                                            <!--CHILD MENU-->
                                        <li class="dropdown-submenu"> 
                                            <a href="#" tabindex="-1" >Organization Structure</a>
                                            <ul class="dropdown-menu">
                                                <li> <a tabindex="-1" href="boardOfD.php?viewPost">BoardOfDirectors</a></li>
                                                <li> <a tabindex="-1" href="mgmtteam.php?mgmtteam">Management</a></li>
                                                <!--GRANDCHILD -->
                                                <li class="dropdown-submenu"><a href="#">More..</a>    
                                                     <ul class="dropdown-menu">
                                                <li><a href="#">3rd level</a></li>
                                                <li><a href="#">3rd level</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="active"<%--<?php if($uri=='OrgView.php') echo "class='active'";?>--%> ><a  href="OrgView.php" >Org's OverView1</a></li>
                                         <li class="active"<%--<?php if($uri=='OrgView.php') echo "class='active'";?>--%> ><a  href="OrgView.php" >Org's OverView2</a></li>
                                        </li>
                                            </ul>
                                        </li>
                                        <!--END OF AboutUs  -->    
            </ul>
    <!-- END FOR MULTI-SUBMENU ABOUT US -->
               
    
        <!-- START FOR MULTI-SUBMENU PRODUCTS PLAN -->
            <ul class="nav navbar-nav">
                                        <!--Begin of AboutUS  -->
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">Our Plan<span class="caret"></span></a>
                                            <ul role="menu" class="dropdown-menu">
                                        
                                            <!--CHILD MENU-->
                                        <li class="dropdown-submenu"> 
                                            <a href="#" tabindex="-1" >Endowment Plan</a>
                                            <ul class="dropdown-menu">
                                                <li> <a tabindex="-1" href="Endowplan.php?viewEndowPlan">AAA Endowment Plan</a></li>
                                                
                                                <!--GRANDCHILD -->
                                                <li class="dropdown-submenu"><a href="#">More..</a>    
                                                     <ul class="dropdown-menu">
                                                <li><a href="#">3rd level</a></li>
                                                <li><a href="#">3rd level</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="active"<%--<?php if($uri=='OrgView.php') echo "class='active'";?>--%> ><a  href="wholelife.php" >Whole Life Plan</a></li>
                                        <li class="active"<%--<?php if($uri=='OrgView.php') echo "class='active'";?>--%> ><a  href="moneyBack.php" >Money Back Plan</a></li>
                                        </li>
                                            </ul>
                                        </li>
                                        <!--END OF AboutUs  -->    
            </ul>
    <!-- END FOR MULTI-SUBMENU PRODUCT PLANS -->
    
    
    <li class="active"> <%-- <?php if($uri == 'kgoing.php') echo "class='active'"; ?>--%><a href="actkar/tabform2a.jsp">Agent</a> </li>
    <li class="active" <%-- <?php if($uri == 'kgoing.php') echo "class='active'"; ?>--%>><a href="kgoing.php">Keep Going</a> </li>
  
  <li class="active" <% if(uri=="gallery.jsp") out.println("class='active'"); %> >      <a href="gallery.jsp?g">Gallery</a></li>
                                       
            </ul>                        
            
            
    
            
            
            
            <!-- START FOR MULTI-SUBMENU -->
            <ul class="nav navbar-nav">
                                        <!--Begin of POST  -->
                                        <li class="dropdown">
                                            <a href="#" data-toggle="dropdown" class="dropdown-toggle">POST<span class="caret"></span></a>
                                            <ul role="menu" class="dropdown-menu">
                                                <li class="active" <%--<?php if($uri=='viewMyPost.php') echo "class='active'";?> --%>> <a  href="going.php" >My POSTS</a>
                                            
                                        </li>
                                            <!--CHILD MENU-->
                                        <li class="dropdown-submenu">
                                            <a href="#" tabindex="-1" >ViewMyPost</a>
                                            <ul class="dropdown-menu">
                                                <li> <a tabindex="-1" href="viewMyPost.php?viewPost">ViewMyPostDetails</a></li>
                                                <li> <a tabindex="-1" href="#">EditMyPostDetails</a></li>
                                                <!--GRANDCHILD -->
                                                <li class="dropdown-submenu"><a href="#">More..</a>    
                                                     <ul class="dropdown-menu navbar-left">
                                                <li><a href="#">3rd level</a></li>
                                                <li><a href="#">3rd level</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        </li>
                                            </ul>
                                        </li>
                                        <!--END OF POST  -->    
            </ul>
            <!-- END FOR MULTI-SUBMENU -->
            
            <ul class="nav navbar-nav">
                <li class="dropdown">
                    <a href="#" data-toggle="dropdown" class="dropdown-toggle" >MAINMENU<span class="caret"></span></a>
                    <ul role="menu" class="dropdown-menu" >
                        <li class="active" <%-- <?php if($uri=='viewMyPost.php') echo "class='active'";?> --%> ><a href="#" >MyPost</a> 
                        </li> 
                     
                    </ul> 
                </li>
            </ul>
                    
            
         
                            <ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" data-toggle="dropdown" class="dropdown-toggle">
                                                    
                                                    H!<%=session.getAttribute("currentSessionUser") %>
						<%--	
						    --%>
                                                 <span class="caret"></span>
						</a>
						<ul role="menu" class="dropdown-menu">
							<li> <a href="account.php">My Account</a> </li>
							<li class="divider"></li>
                                                        <li style="background: #e67e22; color:#fff"> <a href="LogoutServlet">LOGOUT</a> </li>
						</ul>
						<%--<?php } ?> --%>
					</li>
					
				</ul>
			</div>
			<!--/.nav-collapse -->

<!-- MARQUEE -->
<div class="marquee" data-duplicated='true' data-direction='right'><marquee behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();" scrollAmount='2' scrollDelay='50' > jQuery marquee is the best marquee plugin in the world</marquee></div> 

<!-- END-->
                        
                        
                        
                        
                        
                        
                        
                        
		</div> <!-- end container -->






            
            
</div>