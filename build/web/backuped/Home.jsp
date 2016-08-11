<%-- 
    Document   : Home
    Created on : Feb 7, 2016, 12:13:57 PM
    Author     : saurav.paudel
<%@page import="com.mvc.bean.LoginBean" %>

--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.mvc.bean.LoginBean" %>
<%@include file="/design/templates/header.jsp" %>

    
<!-- ssss    session.invalidate();%> -->


 <%--   <% 
        //HttpSession nsession=request.getSession(false);
        //HttpSession nsession=request.getSession();
       //String nsession=(String)request.getAttribute("userName");
       // String nsession=(String)request.getAttribute("currentSessionUser");
        //String nsession=(String)session.getAttribute("userName");
        if(nsession!=null){
            String fname=(String)session.getAttribute("userName");
            //out.println("<h1>WelCome</h1>"+fname);
        }
        else{
            out.println("Session is not Active");
            response.sendRedirect("Login.jsp");
        }
        
        
    %> --%>
    

    

<%--    <center> <h2>HOME PAGE</h2></center>
       
    WelCome <%=request.getAttribute("userName") %>
    WelCome2=<%=session.getAttribute("currentSessionUser")%>
    <a href="LogoutServlet">Logout</a>
 --%>
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Home</title>
		<style>
    		body{
    			font-family:Arial, Helvetica, sans-serif;
                        position: absolute;
                        bottom: 0;
                        top: -45px;
    		}
    		h1{
    		    font-family:'Georgia', Times New Roman, Times, serif;
    		}
                tap-newEVENT{
                    border: 1px;
                    border-width:1px;
  border-bottom: 0.25em solid black;
  width: 150px;
  min-width: 125px;
  float: left;
  padding-top: 2px;
  text-align: right;
  color: #333333;
  max-height: 1em;
  background-color: #f4f4f4;
  font-size: 3em;
  min-height: 1em;
  max-width: 3.2em;
  height: 1em;
  font-weight: bold;
  padding-bottom: 0.2em;

                }
                nav nav-tabs{
                    width: 150px;
                    min-width: 125px;
                    height: 55px;
                }      
                

                
		</style>
       
      
    </head>

    <body>
    
        <div id="container">
             
            <div id="header">
                
                <a href="LogoutServlet">LOGOUT</a>
            </div>
            <div id="main-body">
    			<br/><br/><br/><br/><br/><br/><br/><br/>
    			
                            <%--                  Hello <?php $user->get_fullname($uid); ?> --%>
                            Hellow<% request.getAttribute("currentSessionUser");%>
    			
                        
        <!--FOR TAB - PANE  MENU--> <div class="">                   
                        <ul id="tabs" class="nav nav-tabs tap-newEVENT" style="width:350px;height:100px; margin-left: 660px; margin-top: 250px; "  data-tabs="tabs">
        <li class="active"><a href="#red" data-toggle="tab">Red</a></li>
        <li><a href="#orange" data-toggle="tab">Orange</a></li>
        <li><a href="#yellow" data-toggle="tab">Yellow</a></li>
        <li><a href="#green" data-toggle="tab">Green</a></li>
     <!--   <li><a href="#blue" data-toggle="tab">Blue</a></li> -->
                        </ul>
        <div id="my-tab-content" class="tab-content"  style="width:350px;height:220px; margin-left: 660px;border-bottom: 0.2em solid black; border-left:  0.2em solid  #34A65F;">
        <div class="tab-pane active" id="red">
            <h1>Red</h1>
            <p>red red red red red red</p>
            <p>red red red red red red</p>
            <p>red red red red red red</p>
            <p>red red red red red red</p>
            <p>red red red red red red</p>
            <a href="#">ViewMore</a>
        </div>
        <div class="tab-pane" id="orange">
            <h1>Orange</h1>
            <p>orange orange orange orange orange</p>
            <a href="#">ViewMore</a>
        </div>
        <div class="tab-pane" id="yellow">
            <h1>Yellow</h1>
            <p>yellow yellow yellow yellow yellow</p>
            <a href="#">ViewMore</a>
        </div>
        <div class="tab-pane" id="green">
            <h1>Green</h1>
            <p>green green green green green</p>
            <a href="#">ViewMore</a>
        </div>
       <!-- <div class="tab-pane" id="blue">
            <h1>Blue</h1>
            <p>blue blue blue blue blue</p>
        </div>  -->
     </div> 
        
        </div> <!--FOR TAB MENU --ENDS-->                
                        
                        
                        
            </div>
            <div id="footer"></div>
        </div>
    
   
    </body>
    <%@include file="/design/templates/footer.jsp" %>
    
    
    
    
    
</html>    
    
    
    
    
    

