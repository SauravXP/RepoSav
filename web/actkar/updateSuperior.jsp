<%-- 
    Document   : updateSuperior
    Created on : Sep 5, 2016, 8:31:48 PM
    Author     : alpha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edition Of Superiors</title>

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../agt/daterangepicker.css">
        <script type="text/javascript" src="..//js/jquery-1.11.2.min.js"></script>      
        <script type="text/javascript" src="../agt/moment.min.js"></script>
        <script type="text/javascript" src="../agt/daterangepicker.js"></script>    

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
                <!--   <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">-->
                <div class="col-xs-12 col-sm-8 col-md-7 col-sm-offset-3">
                    <div class="panel panel-default panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title text-center "><strong>Edition:- Agent Superiors Details</strong></h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="POST" action="AgtSuperCont.gar" name="upfrmSuperiors">

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="spcode">Superiors Code:</label>
                                    <div class="col-sm-1 small"><input type="text" name="spcode" class="agtput" value="${super.Code}" id="spcode" required="" placeholder="Superiors Code">
                                        <span class="help-block"></span>
                                    </div>

                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="Anchal">Anchal</label>
                                    <div class="col-sm-4">
                                        <select name="Catetory" class="col-sm-12" id="Anchal" >
                                            <option  value="${super.Category}" selected="selected" id="anch" class="selt" >Category</option>
                                            <option  value="Of"  id="anch" class="selt" >Officer</option>
                                            <option  value="Ma"  id="anch" class="selt" >Manager</option>
                                        </select>
                                        <span class="help-block"></span>
                                    </div>
                                </div>                

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="brn">Branch</label>
                                    <div class="col-sm-1 small"><input type="text" name="brn" class="agtput" id="brn" required="" placeholder="Branch" value="${super.Branch}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="sname">Name</label>
                                    <div class="col-sm-1 small"><input type="text" name="sname" class="agtput" id="sname" required="" placeholder="Superior Name" value="${super.Name}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>



                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="addres">Address</label>
                                    <div class="col-sm-1 small "><input type="text" name="addres" class="agtput" id="addres" required="" placeholder="Address" value="${super.Address}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="pagtcode">PersonalAgentCode</label>
                                    <div class="col-sm-1 small"><input type="text" name="pagtcode" class="agtput" id="pagtcode" required="" placeholder="Personal Agent Code" value="${super.AgentCode}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>                

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="phno">Phone</label>
                                    <div class="col-sm-1 small"><input type="text" name="phno" class="agtput" id="phno" required="" placeholder="Phone.No" value="${super.Phone}">
                                        <span class="help-block"></span>
                                    </div>
                                </div> 

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="mobil">Mobile</label>
                                    <div class="col-sm-1 small"><input type="text" name="mobil" class="agtput" id="mobil" required="" placeholder="MobileNo" value="${super.Mobile}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="agnamen">NameInNepali</label>
                                    <div class="col-sm-1 small"><input type="text" name="agnamen" class="agtput" id="agnamen" required="" placeholder="नेपाली नाम" value="${super.NepName}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="sqfdt">QualifyDate</label>
                                    <div class="col-sm-1 small"><input type="text" name="sqfdt" class="agtput" id="sqfdt" required="" placeholder="01/01/2016" value="${super.QulifyDate}">
                                        <span class="help-block"></span>
                                    </div>
                                </div> 

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="srnldt">Renewal Date</label>
                                    <div class="col-sm-1 small"><input type="text" name="srnldt" class="agtput" id="srnldt" required="" placeholder="01/01/2016" value="${super.RenewalDate}">
                                        <span class="help-block"></span>
                                    </div>
                                </div> 

                                <div class="form-group col-xs-12 small">
                                    <label class="control-label col-sm-2" for="crrsts">CurrentStatus</label>
                                    <div class="form-group col-sm-7 col-md-7 col-sm-offset-2 ">
                                        <select class="form-control selt input-group" >
                                            <option  value="${super.Status}" selected="selected" id="crrsts" class="selt" >Status</option>
                                            <option value="Q">Qualified</option>
                                            <option value="NQ">Not Qualified</option>
                                            <option value="R">Renewed</option>
                                            <option value="NR">Not Renewed</option>
                                            <option value="D">Death</option>
                                            <option value="S">Suspended</option>
                                            <option value="E">Expelled</option>
                                        </select>
                                        <span class="help-block"></span>
                                    </div> 
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-2" for="crrsts">Comm.Pay.Type</label>
                                    <div class="form-group col-sm-7 col-md-7 col-sm-offset-2 ">
                                        <select class="form-control selt input-group" >
                                            <option value="${super.CommPayType}" selected="selected" id="gender" class="selt" >Pay Type</option>
                                            <option value="M">CASH</option>
                                            <option value="F">BANK</option>

                                        </select>
                                        <span class="help-block"></span>
                                    </div> 
                                </div>                      

                                <div class="form-group">
                                    <input type="text" name="remarks" id="remarks" class="form-control input-sm" placeholder="Remarks">
                                </div>
                                <hr class="">
                                Superior Manager
                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="mgrcod">ManagerCode</label>
                                    <div class="col-sm-1 small"><input type="text" name="mgrcod" class="agtput" id="smgrcod" required="" placeholder="Manager Code" value="${super.SuperiorManagerCode}">
                                        <span class="help-block"></span>
                                    </div>
                                </div>

                                <div class="form-group col-xs-12">
                                    <label class="control-label col-sm-4 small" for="smgrcode">Senior Manager</label>
                                    <div class="col-sm-1 small"><input type="text" name="smgrcod" class="agtput" id="smgrcod" required="" placeholder="Manager Code" value="${super.SeniorManagerCode}">
                                        <span class="help-block"></span>
                                    </div>
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
                                            <input type="Submit" name="save" id="save" Value="SAVE" class="form-control btn-sm btn-success">
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
            $(function () {
                $('input[name="sqfdt"]').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true
                }
                );
            });
            $(function () {
                $('input[name="srnldt"]').daterangepicker({
                    singleDatePicker: true,
                    showDropdowns: true
                }
                );
            });


        </script>
    </body>
</html>
