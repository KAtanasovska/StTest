<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assign_leave.aspx.cs" Inherits="HRManagement.Assign_leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="manager_home.html">NEXTSENSE</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li>
                <a href="manager_home.html">
                    Pending requests
                </a>
            </li>
            <li>
                <a href="calendar.html">
                    Leave Calendar
                </a>
            </li>
            <li>
                <a href="assign_leave.html">
                    Assign Leave
                </a>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle"  data-toggle="dropdown" href="#">
                    Employees <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="employee_list.html">
                            Employee list
                        </a>
                    </li>
                    <li>
                        <a href="edit_database.html">
                            Edit Database
                        </a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="request_history.html">
                            <div>
                                <i class="fa fa-bell fa-fw"></i> Leave request - John Smith
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="request_history.html">
                            <div>
                                <i class="fa fa-bell fa-fw"></i>  Leave request - Ana Brown
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li><br></li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="manager_home.html">
                            <strong>See All Requests</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
                <!-- /.dropdown-alerts -->
            </li>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="request_history.html"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->
    </nav>

 <div class="container-fluid">
        <br>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Assign leave
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form role="form">
                                    <div class="form-group">
                                        <label>Employee Name</label>
                                        <select multiple class="form-control" title="employees">
                                            <option>Other</option>
                                            <option>Holiday</option>
                                            <option>Medical Leave</option>
                                            <option>Maternity</option>
                                            <option>Paternity</option>
                                            <option>Annual Paid Leave</option>
                                        </select>
                                        <input type="checkbox" title=""> All Employees
                                    </div>
                                    <div class="form-group">
                                        <label>Date from</label>
                                        <input class="form-control" type="date" title="date from" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Date to</label>
                                        <input class="form-control" type="date" title="date to" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Type of leave</label>
                                        <select class="form-control" title="type of leave"  required>
                                            <option>Other</option>
                                            <option>Holiday</option>
                                            <option>Medical Leave</option>
                                            <option>Maternity</option>
                                            <option>Paternity</option>
                                            <option>Annual Paid Leave</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label>Comment</label>
                                        <textarea class="form-control" rows="3" title="comment"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-success">Submit</button>
                                    <button type="reset" class="btn btn-default">Reset</button>
                                </form>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->


<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- DataTables JavaScript -->
<script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
<script src="../bower_components/datatables-responsive/js/dataTables.responsive.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>


</body>

</html>

<!--<div class="box" id="assign-leave">
    <div class="head">
        <h1>Assign Leave</h1>
    </div>
    <div class="inner">
        <script type="text/javascript">
            //<![CDATA[
            $("div.fadable").delay(5000)
                    .fadeOut("slow", function () {
                        $("div.fadable").remove();
                    });
            //<![CDATA[
        </script>
        <form id="frmLeaveAssign" name="frmLeaveAssign" method="post" action="" enctype="multipart/form-data" novalidate="novalidate">
            <input type="hidden" id="user_question" name="userQuestion" value="">
            <fieldset>
                <ol>
                    <li><label for="assignleave_txtEmployee">Employee Name <em>*</em></label>
                        <input type="text" name="assignleave[txtEmployee][empName]" value="Kiyara Hu" id="assignleave_txtEmployee_empName" autocomplete="off" class="ac_input">
                        <input type="hidden" name="assignleave[txtEmployee][empId]" id="assignleave_txtEmployee_empId" value="82">
                        <script type="text/javascript">
                            var employees_assignleave_txtEmployee = [{"name":"Kevin Master Mathews","id":"1","joined_date":"2009-02-01"},{"name":"Russel Hamilton","id":"2","joined_date":"2010-02-23"},{"name":"Nancy-Ming Boucher","id":"4","joined_date":"2012-03-01"},{"name":"Anthony Milan Nolan","id":"5","joined_date":"2003-03-01"},{"name":"John Smith","id":"7","joined_date":"2003-03-01"},{"name":"Hannah Flores","id":"8","joined_date":"2003-05-02"},{"name":"Ryan Parker","id":"9","joined_date":"2013-03-20"},{"name":"Nicky Silverstone","id":"10","joined_date":"2012-10-24"},{"name":"Jennifer Smith","id":"11","joined_date":"2010-02-04"},{"name":"Nina Patel","id":"12","joined_date":"2012-05-23"},{"name":"Jacqueline White","id":"13","joined_date":"2013-04-08"},{"name":"Mike Taylor","id":"17","joined_date":"2013-02-01"},{"name":"Lisa Smith","id":"18","joined_date":"2013-01-01"},{"name":"Luke Wright","id":"19","joined_date":"2013-08-01"},{"name":"Melan Peiris","id":"20","joined_date":"2013-02-12"},{"name":"Thomas Fleming","id":"22","joined_date":"2010-06-15"},{"name":"Steven Edwards","id":"23","joined_date":"2009-04-23"},{"name":"Julian Taylor","id":"24","joined_date":"2011-06-07"},{"name":"Linda Anderson","id":"25","joined_date":"2009-07-01"},{"name":"Fiona Grace","id":"26","joined_date":"2009-08-03"},{"name":"Kevin Amester Mathews","id":"27","joined_date":"2012-03-01"},{"name":"Jasmine Morgan","id":"28","joined_date":"2015-01-20"},{"name":"Aaliyah Haq","id":"29","joined_date":"2015-01-05"},{"name":"Dylan Caleb","id":"30","joined_date":"2010-06-09"},{"name":"Dominic Chase","id":"31","joined_date":"2015-01-05"},{"name":"Brody Alan","id":"32","joined_date":"2015-01-05"},{"name":"Kai Keegan","id":"33","joined_date":"2012-05-01"},{"name":"Maggie Manning","id":"34","joined_date":"2010-04-30"},{"name":"Cassidy Hope","id":"35","joined_date":"2009-11-16"},{"name":"Peter Mac Anderson","id":"38","joined_date":"2003-03-03"},{"name":"Nathan Elliot","id":"39","joined_date":"2012-03-01"},{"name":"Sophia Ava","id":"40","joined_date":"2014-01-13"},{"name":"Charlotte KM Logan","id":"41","joined_date":"2014-08-25"},{"name":"Mason Gabriel","id":"42","joined_date":"2014-08-25"},{"name":"Odis Adalwin","id":"44","joined_date":"2010-03-08"},{"name":"Gary Rainer","id":"45","joined_date":"2014-03-03"},{"name":"Zacharia Rolf","id":"47","joined_date":"2015-02-09"},{"name":"Katrina Keifer","id":"48","joined_date":"2015-01-06"},{"name":"George Tofari","id":"49","joined_date":"2014-09-01"},{"name":"Andrew Daley","id":"50","joined_date":"2014-11-25"},{"name":"Robert Craig","id":"51","joined_date":"2014-03-18"},{"name":"Katerina Skonis","id":"53","joined_date":"2011-02-04"},{"name":"Tian Fieur","id":"55","joined_date":"2013-12-02"},{"name":"Yi Ling Marcus","id":"56","joined_date":"2013-05-20"},{"name":"syiqah jie","id":"57","joined_date":"2014-11-12"},{"name":"Jiaming Lee","id":"58","joined_date":"2014-12-01"},{"name":"Alice Duval","id":"59","joined_date":"2013-01-08"},{"name":"Christine Lasalle","id":"60","joined_date":"2013-04-16"},{"name":"Yvonne Michelin","id":"61","joined_date":"2013-01-02"},{"name":"Cecil Bonaparte","id":"62","joined_date":"2012-08-06"},{"name":"Dimpy Arva","id":"63","joined_date":"2011-12-05"},{"name":"Prem Preet","id":"64","joined_date":"2012-06-05"},{"name":"Goutam Ganesh","id":"65","joined_date":"2012-10-29"},{"name":"Simran Roshan","id":"66","joined_date":"2014-02-03"},{"name":"Heer Kaur","id":"67","joined_date":"2014-09-08"},{"name":"Emily Harris","id":"68","joined_date":"2008-08-04"},{"name":"Tom Walker","id":"69","joined_date":"2011-08-22"},{"name":"Jadine Jackie","id":"70","joined_date":"2012-12-10"},{"name":"Daniel Upton","id":"71","joined_date":"2013-11-14"},{"name":"Orlando Knight","id":"72","joined_date":"2014-03-17"},{"name":"Amadi Aswad","id":"73","joined_date":"2012-09-10"},{"name":"Ehioze Ebo","id":"74","joined_date":"2010-12-13"},{"name":"Olushola Olujimi","id":"75","joined_date":"2012-03-27"},{"name":"Jendayi Jumoke","id":"76","joined_date":"2011-06-13"},{"name":"Chenzira Chuki","id":"77","joined_date":"2014-12-01"},{"name":"Chang Cheng","id":"78","joined_date":"2012-10-08"},{"name":"Fabienne Gabor","id":"79","joined_date":"2013-12-16"},{"name":"Xandra Xavier","id":"80","joined_date":"2009-07-31"},{"name":"Tacitus Tabby","id":"81","joined_date":"2014-04-18"},{"name":"Kiyara Hu","id":"82","joined_date":"2014-04-21"},{"name":"Khloe Jayden","id":"83","joined_date":"2012-02-01"},{"name":"Charlie Carter","id":"84","joined_date":"2012-08-06"},{"name":"Melodie Leonie","id":"85","joined_date":"2013-04-15"},{"name":"Theo Simon","id":"86","joined_date":"2013-12-30"},{"name":"Gavin Louis","id":"87","joined_date":"2013-09-24"},{"name":"Kevin Mathews","id":"88","joined_date":"2015-01-06"},{"name":"andrew Keller","id":"89","joined_date":null},{"name":"Paul Collings","id":"90","joined_date":null}];
                            $(document).ready(function() {
                                var widgetId = 'assignleave_txtEmployee_empName';
                                var hiddenFieldId = 'assignleave_txtEmployee_empId';
                                var nameField = $("#"+ widgetId);
                                var idStoreField = $("#" + hiddenFieldId);
                                var typeHint = 'Type for hints...';
                                var hintClass = 'inputFormatHint';
                                var loadingMethod = '';
                                var loadingHint = 'Loading';
                                nameField.bind('clone', function(event, data) {
                                    var newFieldId = widgetId + '_' + data.fieldNo;
                                    var newHiddenFieldId = hiddenFieldId + '_' + data.fieldNo;
                                    $(this).clone().css('margin-left', data.marginLeft)
                                            .attr('id', newFieldId).val('').insertBefore(data.insertBefore);
                                    $('#' + hiddenFieldId).clone().attr('id', newHiddenFieldId).insertBefore(data.insertBefore);
                                    initWidgetassignleave_txtEmployee_empName(newFieldId, newHiddenFieldId);
                                });
                                if (idStoreField.val() != '') {
                                    idStoreField.data('item.name', nameField.val());
                                }
                                nameField.data('typeHint', typeHint);
                                nameField.data('loadingHint', loadingHint);
                                nameField.one('focus', function() {
                                    if ($(this).hasClass(hintClass)) {
                                        $(this).val("");
                                        $(this).removeClass(hintClass);
                                    }
                                });
                                if( loadingMethod != 'ajax'){
                                    if (nameField.val() == '' || nameField.val() == typeHint) {
                                        nameField.val(typeHint).addClass(hintClass);
                                    }
                                    nameField.autocomplete(employees_assignleave_txtEmployee, {
                                        formatItem: function(item) {
                                            return $('<div/>').text(item.name).html();
                                        },
                                        formatResult: function(item) {
                                            return item.name
                                        }
                                        ,matchContains:true
                                    }).result(function(event, item) {
                                                idStoreField.val(item.id);
                                                idStoreField.data('item.name', item.name);
                                                nameField.trigger( "keyup" );
                                            }
                                    );
                                }else{
                                    var value = nameField.val().trim();
                                    nameField.val(loadingHint).addClass('ac_loading');
                                    $.ajax({
                                        url: "/pim/getEmployeeListAjax",
                                        data: '',
                                        dataType: 'json',
                                        success: function(employeeList){
                                            nameField.autocomplete(employeeList, {
                                                formatItem: function(item) {
                                                    return $('<div/>').text(item.name).html();
                                                },
                                                formatResult: function(item) {
                                                    return item.name
                                                }
                                                ,matchContains:true
                                            }).result(function(event, item) {
                                                        idStoreField.val(item.id);
                                                        idStoreField.data('item.name', item.name);
                                                        nameField.trigger( "keyup" );
                                                    }
                                            );
                                            nameField.removeClass('ac_loading');
                                            if(value==''){
                                                nameField.val(typeHint).addClass(hintClass);
                                            } else {
                                                nameField.val(value).addClass();
                                            }
                                        }
                                    });
                                }
                            }); // End of $(document).ready
                            function initWidgetassignleave_txtEmployee_empName(widgetId, hiddenFieldId) {
                                var nameField = $("#" + widgetId);
                                var idStoreField = $("#" + hiddenFieldId);
                                var typeHint = 'Type for hints...';
                                var hintClass = 'inputFormatHint';
                                var loadingMethod = '';
                                var loadingHint = 'Loading';
                                nameField.data('typeHint', typeHint);
                                nameField.data('loadingHint', loadingHint);
                                nameField.one('focus', function() {
                                    if ($(this).hasClass(hintClass)) {
                                        $(this).val("");
                                        $(this).removeClass(hintClass);
                                    }
                                });
                                if (loadingMethod != 'ajax') {
                                    if (nameField.val() == '' || nameField.val() == typeHint) {
                                        nameField.val(typeHint).addClass(hintClass);
                                    }
                                    nameField.autocomplete(employees_assignleave_txtEmployee, {
                                        formatItem: function(item) {
                                            return $('<div/>').text(item.name).html();
                                        },
                                        formatResult: function(item) {
                                            return item.name
                                        },
                                        matchContains:true
                                    }).result(function(event, item) {
                                                idStoreField.val(item.id);
                                                nameField.trigger( "keyup" );
                                            }
                                    );
                                } else { /* AJAX */
                                    var value = nameField.val().trim();
                                    nameField.val(loadingHint).addClass('ac_loading');
                                    $.ajax({
                                        url: "{AJAX_URL}",
                                        data: "",
                                        dataType: 'json',
                                        success: function(employeeList) {
                                            nameField.autocomplete(employeeList, {
                                                formatItem: function(item) {
                                                    return $('<div/>').text(item.name).html();
                                                },
                                                formatResult: function(item) {
                                                    return item.name
                                                }
                                                ,matchContains:true
                                            }).result(function(event, item) {
                                                        idStoreField.val(item.id);
                                                        nameField.trigger( "keyup" );
                                                    }
                                            );
                                            nameField.removeClass('ac_loading');
                                            if(value==''){
                                                nameField.val(typeHint).addClass(hintClass);
                                            } else {
                                                nameField.val(value).addClass();
                                            }
                                        }
                                    });
                                }
                            }
                        </script>
                    </li>
                    <li><label for="assignleave_txtLeaveType">Leave Type <em>*</em></label>
                        <select name="assignleave[txtLeaveType]" id="assignleave_txtLeaveType">
                            <option value="">--Select--</option>
                            <option value="33" selected="selected">Medical CN</option>
                        </select><a href="#" id="leave_balance_link">Check Leave Balance</a>
                    </li>
                    <li><label for="assignleave_txtFromDate">From Date <em>*</em></label>
                        <input id="assignleave_txtFromDate" type="text" name="assignleave[txtFromDate]" value="2016-07-17" class="calendar hasDatepicker"><img class="ui-datepicker-trigger" src="/webres_57920809e64ee2.41496651/themes/enterprise/images/calendar.png" alt="" title=""> <script type="text/javascript">
                            var datepickerDateFormat = 'yy-mm-dd';
                            var displayDateFormat = datepickerDateFormat.replace('yy', 'yyyy');
                            $(document).ready(function(){
                                var dateFieldValue = $.trim($("#assignleave_txtFromDate").val());
                                if (dateFieldValue == '') {
                                    $("#assignleave_txtFromDate").val(displayDateFormat);
                                }
                                daymarker.bindElement("#assignleave_txtFromDate",
                                        {
                                            showOn: "both",
                                            dateFormat: datepickerDateFormat,
                                            buttonImage: "/webres_57920809e64ee2.41496651/themes/enterprise/images/calendar.png",
                                            buttonText:"",
                                            buttonImageOnly: true,
                                            changeMonth: true,
                                            changeYear: true,
                                            yearRange: "-100:+100",
                                            firstDay: 1,
                                            onClose: function() {
                                                $("#assignleave_txtFromDate").trigger('blur');
                                            }
                                        });
                                //$("img.ui-datepicker-trigger").addClass("editable");
                                $("#assignleave_txtFromDate").click(function(){
                                    daymarker.show("#assignleave_txtFromDate");
                                    if ($(this).val() == displayDateFormat) {
                                        $(this).val('');
                                    }
                                });
                            });
                        </script>
                    </li>
                    <li><label for="assignleave_txtToDate">To Date <em>*</em></label>
                        <input id="assignleave_txtToDate" type="text" name="assignleave[txtToDate]" value="2016-07-18" class="calendar hasDatepicker"><img class="ui-datepicker-trigger" src="/webres_57920809e64ee2.41496651/themes/enterprise/images/calendar.png" alt="" title=""> <script type="text/javascript">
                            var datepickerDateFormat = 'yy-mm-dd';
                            var displayDateFormat = datepickerDateFormat.replace('yy', 'yyyy');
                            $(document).ready(function(){
                                var dateFieldValue = $.trim($("#assignleave_txtToDate").val());
                                if (dateFieldValue == '') {
                                    $("#assignleave_txtToDate").val(displayDateFormat);
                                }
                                daymarker.bindElement("#assignleave_txtToDate",
                                        {
                                            showOn: "both",
                                            dateFormat: datepickerDateFormat,
                                            buttonImage: "/webres_57920809e64ee2.41496651/themes/enterprise/images/calendar.png",
                                            buttonText:"",
                                            buttonImageOnly: true,
                                            changeMonth: true,
                                            changeYear: true,
                                            yearRange: "-100:+100",
                                            firstDay: 1,
                                            onClose: function() {
                                                $("#assignleave_txtToDate").trigger('blur');
                                            }
                                        });
                                //$("img.ui-datepicker-trigger").addClass("editable");
                                $("#assignleave_txtToDate").click(function(){
                                    daymarker.show("#assignleave_txtToDate");
                                    if ($(this).val() == displayDateFormat) {
                                        $(this).val('');
                                    }
                                });
                            });
                        </script>
                    </li>
                    <li style="display: none;"><label for="assignleave_duration">Duration</label>
                        <select class="leave_duration_dropdown" name="assignleave[duration][duration]" id="assignleave_duration_duration">
                            <option value="full_day" selected="selected">Full Day</option>
                            <option value="half_day">Half Day</option>
                            <option value="specify_time">Specify Time</option>
                        </select>  <span id="assignleave_duration_half_day_content" style="display:none"><select class="leave_duration_ampm" name="assignleave[duration][ampm]" id="assignleave_duration_ampm">
<option value="AM" selected="selected">Morning</option>
<option value="PM">Afternoon</option>
</select></span> <span id="assignleave_duration_specify_time_content" style="display:none"><label for="assignleave_duration_time_from" class="time_range_label">From</label> <select id="assignleave_duration_time_from" class="timepicker" name="assignleave[duration][time][from]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00" selected="selected">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label for="assignleave_duration_time_to" class="time_range_label">To</label> <select id="assignleave_duration_time_to" class="timepicker" name="assignleave[duration][time][to]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00" selected="selected">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label class="time_range_label">Duration</label> <input disabled="disabled" type="text" class="time_range_duration" value="8.00"></span><script type="text/javascript">
                            $(document).ready(function(){
                                orangehrm.widgets.formLeaveDuration.handleDurationChange($("#assignleave_duration_duration").val(), 'assignleave_duration_full_day_content', 'assignleave_duration_half_day_content', 'assignleave_duration_specify_time_content');
                                $("#assignleave_duration_duration").change(function() {
                                    orangehrm.widgets.formLeaveDuration.handleDurationChange($(this).val(), 'assignleave_duration_full_day_content', 'assignleave_duration_half_day_content', 'assignleave_duration_specify_time_content');
                                });
                            });
                        </script>
                    </li>
                    <li style="display: list-item;"><label for="assignleave_partialDays">Partial Days</label>
                        <select name="assignleave[partialDays]" id="assignleave_partialDays">
                            <option value="" selected="selected">None</option>
                            <option value="all">All Days</option>
                            <option value="start">Start Day Only</option>
                            <option value="end">End Day Only</option>
                            <option value="start_end">Start and End Day</option>
                        </select>
                    </li>
                    <li style="display: none;"><label for="assignleave_firstDuration">Duration</label>
                        <select class="leave_duration_dropdown" name="assignleave[firstDuration][duration]" id="assignleave_firstDuration_duration">
                            <option value="half_day" selected="selected">Half Day</option>
                            <option value="specify_time">Specify Time</option>
                        </select>  <span id="assignleave_firstDuration_half_day_content" style=""><select class="leave_duration_ampm" name="assignleave[firstDuration][ampm]" id="assignleave_firstDuration_ampm">
<option value="AM" selected="selected">Morning</option>
<option value="PM">Afternoon</option>
</select></span> <span id="assignleave_firstDuration_specify_time_content" style="display:none"><label for="assignleave_firstDuration_time_from" class="time_range_label">From</label> <select id="assignleave_firstDuration_time_from" class="timepicker" name="assignleave[firstDuration][time][from]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00" selected="selected">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label for="assignleave_firstDuration_time_to" class="time_range_label">To</label> <select id="assignleave_firstDuration_time_to" class="timepicker" name="assignleave[firstDuration][time][to]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00" selected="selected">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label class="time_range_label">Duration</label> <input disabled="disabled" type="text" class="time_range_duration" value="8.00"></span><script type="text/javascript">
                            $(document).ready(function(){
                                orangehrm.widgets.formLeaveDuration.handleDurationChange($("#assignleave_firstDuration_duration").val(), 'assignleave_firstDuration_full_day_content', 'assignleave_firstDuration_half_day_content', 'assignleave_firstDuration_specify_time_content');
                                $("#assignleave_firstDuration_duration").change(function() {
                                    orangehrm.widgets.formLeaveDuration.handleDurationChange($(this).val(), 'assignleave_firstDuration_full_day_content', 'assignleave_firstDuration_half_day_content', 'assignleave_firstDuration_specify_time_content');
                                });
                            });
                        </script>
                    </li>
                    <li style="display: none;"><label for="assignleave_secondDuration">Duration</label>
                        <select class="leave_duration_dropdown" name="assignleave[secondDuration][duration]" id="assignleave_secondDuration_duration">
                            <option value="half_day" selected="selected">Half Day</option>
                            <option value="specify_time">Specify Time</option>
                        </select>  <span id="assignleave_secondDuration_half_day_content" style=""><select class="leave_duration_ampm" name="assignleave[secondDuration][ampm]" id="assignleave_secondDuration_ampm">
<option value="AM" selected="selected">Morning</option>
<option value="PM">Afternoon</option>
</select></span> <span id="assignleave_secondDuration_specify_time_content" style="display:none"><label for="assignleave_secondDuration_time_from" class="time_range_label">From</label> <select id="assignleave_secondDuration_time_from" class="timepicker" name="assignleave[secondDuration][time][from]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00" selected="selected">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label for="assignleave_secondDuration_time_to" class="time_range_label">To</label> <select id="assignleave_secondDuration_time_to" class="timepicker" name="assignleave[secondDuration][time][to]" aria-invalid="false">
<option value=""></option>
<option value="00:00">00:00</option>
<option value="00:15">00:15</option>
<option value="00:30">00:30</option>
<option value="00:45">00:45</option>
<option value="01:00">01:00</option>
<option value="01:15">01:15</option>
<option value="01:30">01:30</option>
<option value="01:45">01:45</option>
<option value="02:00">02:00</option>
<option value="02:15">02:15</option>
<option value="02:30">02:30</option>
<option value="02:45">02:45</option>
<option value="03:00">03:00</option>
<option value="03:15">03:15</option>
<option value="03:30">03:30</option>
<option value="03:45">03:45</option>
<option value="04:00">04:00</option>
<option value="04:15">04:15</option>
<option value="04:30">04:30</option>
<option value="04:45">04:45</option>
<option value="05:00">05:00</option>
<option value="05:15">05:15</option>
<option value="05:30">05:30</option>
<option value="05:45">05:45</option>
<option value="06:00">06:00</option>
<option value="06:15">06:15</option>
<option value="06:30">06:30</option>
<option value="06:45">06:45</option>
<option value="07:00">07:00</option>
<option value="07:15">07:15</option>
<option value="07:30">07:30</option>
<option value="07:45">07:45</option>
<option value="08:00">08:00</option>
<option value="08:15">08:15</option>
<option value="08:30">08:30</option>
<option value="08:45">08:45</option>
<option value="09:00">09:00</option>
<option value="09:15">09:15</option>
<option value="09:30">09:30</option>
<option value="09:45">09:45</option>
<option value="10:00">10:00</option>
<option value="10:15">10:15</option>
<option value="10:30">10:30</option>
<option value="10:45">10:45</option>
<option value="11:00">11:00</option>
<option value="11:15">11:15</option>
<option value="11:30">11:30</option>
<option value="11:45">11:45</option>
<option value="12:00">12:00</option>
<option value="12:15">12:15</option>
<option value="12:30">12:30</option>
<option value="12:45">12:45</option>
<option value="13:00">13:00</option>
<option value="13:15">13:15</option>
<option value="13:30">13:30</option>
<option value="13:45">13:45</option>
<option value="14:00">14:00</option>
<option value="14:15">14:15</option>
<option value="14:30">14:30</option>
<option value="14:45">14:45</option>
<option value="15:00">15:00</option>
<option value="15:15">15:15</option>
<option value="15:30">15:30</option>
<option value="15:45">15:45</option>
<option value="16:00">16:00</option>
<option value="16:15">16:15</option>
<option value="16:30">16:30</option>
<option value="16:45">16:45</option>
<option value="17:00" selected="selected">17:00</option>
<option value="17:15">17:15</option>
<option value="17:30">17:30</option>
<option value="17:45">17:45</option>
<option value="18:00">18:00</option>
<option value="18:15">18:15</option>
<option value="18:30">18:30</option>
<option value="18:45">18:45</option>
<option value="19:00">19:00</option>
<option value="19:15">19:15</option>
<option value="19:30">19:30</option>
<option value="19:45">19:45</option>
<option value="20:00">20:00</option>
<option value="20:15">20:15</option>
<option value="20:30">20:30</option>
<option value="20:45">20:45</option>
<option value="21:00">21:00</option>
<option value="21:15">21:15</option>
<option value="21:30">21:30</option>
<option value="21:45">21:45</option>
<option value="22:00">22:00</option>
<option value="22:15">22:15</option>
<option value="22:30">22:30</option>
<option value="22:45">22:45</option>
<option value="23:00">23:00</option>
<option value="23:15">23:15</option>
<option value="23:30">23:30</option>
<option value="23:45">23:45</option>
</select> <label class="time_range_label">Duration</label> <input disabled="disabled" type="text" class="time_range_duration" value="8.00"></span><script type="text/javascript">
                            $(document).ready(function(){
                                orangehrm.widgets.formLeaveDuration.handleDurationChange($("#assignleave_secondDuration_duration").val(), 'assignleave_secondDuration_full_day_content', 'assignleave_secondDuration_half_day_content', 'assignleave_secondDuration_specify_time_content');
                                $("#assignleave_secondDuration_duration").change(function() {
                                    orangehrm.widgets.formLeaveDuration.handleDurationChange($(this).val(), 'assignleave_secondDuration_full_day_content', 'assignleave_secondDuration_half_day_content', 'assignleave_secondDuration_specify_time_content');
                                });
                            });
                        </script>
                    </li>
                    <li class="largeTextBox"><label for="assignleave_txtComment">Comment</label>
                        <textarea rows="3" cols="30" name="assignleave[txtComment]" id="assignleave_txtComment">kojhigig</textarea>
                    </li>
                    <li style="display: none;"><label for="assignleave_attachment">Attachment</label>
                        <input type="file" name="assignleave[attachment]" id="assignleave_attachment"><label class="fieldHelpBottom">Accepts up to 1MB</label>
                        <input type="hidden" name="assignleave[txtEmpWorkShift]" value="8" id="assignleave_txtEmpWorkShift">
                        <input type="hidden" name="assignleave[_csrf_token]" value="1cdadd5c53d4d45317bc346f62efd844" id="assignleave__csrf_token"></li>
                    <li class="required new" id="required" aria-required="true">
                        <em>*</em> Required field                    </li>
                </ol>
                <p>
                    <input type="button" id="assignBtn" value="Assign">
                </p>
            </fieldset>
        </form>
    </div> <!-- inner
</div>-->
