<%-- 
    Document   : tabbedform
    Created on : Jun 26, 2016, 11:28:37 AM
    Author     : saurav.paudel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="../css/bootstrap.css" rel="stylesheet" media="screen">
<link href="../css/bootstrap-responsive.css" rel="stylesheet" media="screen">       
<link href="../css/bootstrap.min.css" rel="stylesheet" media="screen"/>
<link href="../css/bootstrap-custom.css" rel="stylesheet" media="screen"/>
<link href='http://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'/>
    <!-- Bootstrap -->
     <link href="../css/font-awesome.min.css" rel="stylesheet"/>
     <link href="../css/styles.css"/>
     <style type="text/css">
#accountForm {
    margin-top: 15px;
}
</style>
    </head>
    <body>
    <ul class="nav nav-tabs`">
    <li class="active"><a href="#info-tab" data-toggle="tab">Information <i class="fa"></i></a></li>
    <li><a href="#address-tab" data-toggle="tab">Address <i class="fa"></i></a></li>
</ul>

<form id="accountForm" method="post" class="form-horizontal">
    <div class="tab-content">
        <div class="tab-pane active" id="info-tab">
            <div class="form-group">
                <label class="col-xs-3 control-label">Full name</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="fullName" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-3 control-label">Company</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="company" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-3 control-label">Job title</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="jobTitle" />
                </div>
            </div>
        </div>

        <div class="tab-pane" id="address-tab">
            <div class="form-group">
                <label class="col-xs-3 control-label">Address</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="address" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-3 control-label">City</label>
                <div class="col-xs-5">
                    <input type="text" class="form-control" name="city" />
                </div>
            </div>

            <div class="form-group">
                <label class="col-xs-3 control-label">Country</label>
                <div class="col-xs-5">
                    <select class="form-control" name="country">
                        <option value="">Select a country</option>
                        <option value="FR">France</option>
                        <option value="DE">Germany</option>
                        <option value="IT">Italy</option>
                        <option value="JP">Japan</option>
                        <option value="RU">Russian</option>
                        <option value="US">United State</option>
                        <option value="GB">United Kingdom</option>
                        <option value="other">Other</option>
                    </select>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group" style="margin-top: 15px;">
        <div class="col-xs-5 col-xs-offset-3">
            <button type="submit" class="btn btn-default">Validate</button>
        </div>
    </div>
</form>

<script>
$(document).ready(function() {
    $('#accountForm')
        .formValidation({
            framework: 'bootstrap',
            // Only disabled elements are excluded
            // The invisible elements belonging to inactive tabs must be validated
            excluded: [':disabled'],
            icon: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                fullName: {
                    validators: {
                        notEmpty: {
                            message: 'The full name is required'
                        }
                    }
                },
                company: {
                    validators: {
                        notEmpty: {
                            message: 'The company name is required'
                        }
                    }
                },
                address: {
                    validators: {
                        notEmpty: {
                            message: 'The address is required'
                        }
                    }
                },
                city: {
                    validators: {
                        notEmpty: {
                            message: 'The city is required'
                        }
                    }
                }
            }
        })
        .on('err.field.fv', function(e, data) {
            // data.fv --> The FormValidation instance

            // Get the first invalid field
            var $invalidFields = data.fv.getInvalidFields().eq(0);

            // Get the tab that contains the first invalid field
            var $tabPane     = $invalidFields.parents('.tab-pane'),
                invalidTabId = $tabPane.attr('id');

            // If the tab is not active
            if (!$tabPane.hasClass('active')) {
                // Then activate it
                $tabPane.parents('.tab-content')
                        .find('.tab-pane')
                        .each(function(index, tab) {
                            var tabId = $(tab).attr('id'),
                                $li   = $('a[href="#' + tabId + '"][data-toggle="tab"]').parent();

                            if (tabId === invalidTabId) {
                                // activate the tab pane
                                $(tab).addClass('active');
                                // and the associated <li> element
                                $li.addClass('active');
                            } else {
                                $(tab).removeClass('active');
                                $li.removeClass('active');
                            }
                        });

                // Focus on the field
                $invalidFields.focus();
            }
        });
});
</script>
   <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
   <script type="text/javascript" src="../js/unitpngfix.js"></script>
<script type="text/javascript" src="../js/bootstrap.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/jquery.min.js"></script>
    </body>
</html>
