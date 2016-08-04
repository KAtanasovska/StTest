<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee_page.aspx.cs" Inherits="HRManagement.Employee_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Employee page</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>
<body>
    
<div id="wrapper">
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">NEXTSENSE</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-check fa-fw"></i> Leave accepted
                                <span class="pull-right text-muted small">4 minutes ago</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>See All Alerts</strong>
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
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
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
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    Days left from annual paid leave: <b><asp:Label runat="server" ID="lbDaysOfVacation"/></b> days</h2>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Ask for leave
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <form id="form1" runat="server">
                                    <div class="form-group">
                                        <label>Date from</label>
                                        <asp:TextBox runat="server" class="form-control" type="date" title="date from" ID="tbDateFrom" />
                                    </div>
                                    <div class="form-group">
                                        <label>Date to</label>
                                        <asp:TextBox runat="server" class="form-control" type="date" title="date to" ID="tbDateTo"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Type of leave</label>
                                        <asp:DropDownList runat="server" id="ddlstTypeOfLeave" DataSourceID="SqlDataSourceLeaveType" DataTextField="type" DataValueField="Id">
                                            
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSourceLeaveType" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Leave_type]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="SqlDataSourceLeaveHistory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT [Comment], [From_date], [To_date], [Status] FROM [Leave]">
                                        </asp:SqlDataSource>
                                    </div>
                                    <div class="form-group">
                                        <label>Comment</label>
                                        <asp:TextBox TextMode="multiline" runat="server"  class="form-control" rows="3" title="comment" ID="tbComment"></asp:TextBox>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-success" ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                                    <asp:Button runat="server" type="reset" class="btn btn-default" ID="btnReset" Text="Reset"></asp:Button>
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

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>
    <asp:Label ID="lblSuccesfulLeaveRequest" runat="server"></asp:Label>
</body>
</html>
