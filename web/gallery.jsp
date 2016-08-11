<%-- 
    Document   : gallery
    Created on : Mar 18, 2016, 12:44:02 PM
    Author     : saurav.paudel
--%>


<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page language="java" session="true" %>
<%@page import="com.mvc.bean.LoginBean"  %>
<%@include file="templates/header.jsp" %> 
 
    
   
<%      
           // session.isNew();
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
      response.setHeader("Pragma", "no-cache");      
       if(nsession==null ){
        //String fname=(String)request.getAttribute("currentSessionUser");
           //response.sendRedirect("Login.jsp");
                     response.sendRedirect("Login.jsp");
        }
       else
       {
    String fname=(String)request.getAttribute("currentSessionUser");
       }
%>

       


    
<!-- ssss    session.invalidate();%> -->


<%-- <% 
        //HttpSession nsession=request.getSession(false);
        //HttpSession nsession=request.getSession();
       //String nsession=(String)request.getAttribute("userName");
       // String nsession=(String)request.getAttribute("currentSessionUser");
        //String nsession=(String)session.getAttribute("userName");
        if(nsession!=null){
            
            String fname=(String)session.getAttribute("userName");
            //out.println("<h1>WelCome</h1>"+fname);
            //response.sendRedirect("gallery.jsp");
        }
        else {
                String pages="gallery.jsp";
                //try{
                    
               // }catch(Exception e){
                //    pages="error1.jsp";
               // }finally{
             //       pages="gallery.jsp";
               // }
            //out.println("Session is not Active");
            //response.sendRedirect("Login.jsp");
               RequestDispatcher dd=request.getRequestDispatcher(pages);
              dd.forward(request, response);
            return;

            }
       // }
       
    %>  --%>


    
    

      <link href="css/form.css" rel="stylesheet">
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/fullscreen.css" rel="stylesheet">

 
  <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>
 
<style>
   .modal-dialog {width:600px;}
.thumbnail {margin-bottom:6px;}

h1{
	font-size: 30pt;
	font-weight: 700;
    letter-spacing: -2px;
    font-style: oblique;
}
  </style>
  
  <div class="content">
  <div class="container">
  <div class="row">
      
      <h1 class="text-center text-success" > <%=session.getAttribute("currentSessionUser") %> Bootstrap 3 Lightbox image gallery using Modal</h1>
      
    <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 1" href="#"><img class="thumbnail img-responsive" src="img/photodune-1471528-insant-camera-kid-xs.jpg"></a></div>
    <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 2" href="#"><img class="thumbnail img-responsive" src="img/photodune-174908-rocking-the-night-away-xs.jpg"></a></div>
    <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 3" href="#"><img class="thumbnail img-responsive" src="img/photodune-2255072-relaxed-man-xs.jpg"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 4" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/992233"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 5" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/2255EE"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 6" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/449955/FFF"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 8" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/777"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 9" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/992233"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 10" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/EEE"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 11" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/449955/FFF"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 12" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/DDD"></a></div>
      <div class="col-lg-3 col-sm-4 col-xs-6"><a title="Image 13" href="#"><img class="thumbnail img-responsive" src="//placehold.it/600x350/992233"></a></div>
   
    <hr>
    
    <hr>
  </div>

<div tabindex="-1" class="modal fade" id="myModal" role="dialog">
  <div class="modal-dialog">
  <div class="modal-content">
    <div class="modal-header">
		<button class="close" type="button" data-dismiss="modal">×</button>
		<h3 class="modal-title">Headings</h3>
	</div>
	<div class="modal-body">
		
	</div>
	<div class="modal-footer">
		<button class="btn btn-default" data-dismiss="modal">Close</button>
	</div>
   </div>
  </div>
</div>
      </div>
  </div>
  
  <script>
 
  $(document).ready(function() {
$('.thumbnail').click(function(){
      $('.modal-body').empty();
  	var title = $(this).parent('a').attr("title");
  	$('.modal-title').html(title);
  	$($(this).parents('div').html()).appendTo('.modal-body');
  	$('#myModal').modal({show:true});
});
});</script>
  
  
  <%@include file="templates/footer.jsp" %>
   