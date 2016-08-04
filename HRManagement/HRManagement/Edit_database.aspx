<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit_database.aspx.cs" Inherits="HRManagement.Edit_database" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Employee list</title>

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css"
          rel="stylesheet">

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
    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

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
    <form runat="server">
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
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Edit Database</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>

        <div class="row">
            <div class="col-lg-5">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Add Employee
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div role="form">
                                    <div class="form-group">
                                        <label>First Name</label>
                                        <input runat="server" class="form-control" type="text" title="" required="required" id="inFirstName"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Last Name</label>
                                        <input runat="server" class="form-control" type="text" title="" required="required" id="inLastName"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input runat="server" class="form-control" type="text" title="" required="required" id="inUsername"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input runat="server" class="form-control" type="text" title="" required="required" id="inPassword"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Title</label>
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" name="optionsRadios" id="rbTitleEmployee"
                                                       value="option1" checked=""/>Employee
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label>
                                                <input runat="server" type="radio" name="optionsRadios" id="rbTitleManager"
                                                       value="option2"/>Manager
                                            </label>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label>Job Title</label>
                                            <asp:DropDownList runat="server" class="form-control" title="" id="ddlJobTitleEmployee" DataSourceID="SqlDataSourceJob" DataTextField="JobName" DataValueField="Id">
                                                
                                            </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>Department</label>
                                        <asp:DropDownList runat="server" class="form-control" title="" id="ddlDepartmentEmployee" DataSourceID="SqlDataSourceDepartment" DataTextField="Department_name" DataValueField="Id">
                                            
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label>EMBG</label>
                                        <input runat="server" class="form-control" type="text" title=""  required="required" id="inEMBG"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Phone Number</label>
                                        <input runat="server" class="form-control" type="text" title="" id="inPhone"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Address</label>
                                        <input runat="server" class="form-control" type="text" title="" id="inAddress"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Number of vacation days</label>
                                        <input runat="server" class="form-control" type="number" title="" required="required" id="inVacationDays"/>
                                    </div>
                                    <div class="form-group">
                                        <label>Education</label>
                                        <textarea runat="server" class="form-control" rows="3" title="edu" id="inEducation"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Skills</label>
                                        <asp:ListBox runat="server" multiple="true" class="form-control" title="" id="lbSkillsEmployee" DataSourceID="SqlDataSourceSkills" DataTextField="Skill_name" DataValueField="Id">
                                           
                                        </asp:ListBox>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-success" Text="Submit" ID="btnAddEmployee" OnClick="btnAddEmployee_Click"></asp:Button>
                                    <asp:Button runat="server" type="reset" class="btn btn-default" Text="Reset" CausesValidation="False"></asp:Button>
                                    <label runat="server" id="lblAddedEmployee"></label>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <div class="col-lg-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Department
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div  role="form">
                                    <div class="form-group">
                                        <label>Add Department</label>
                                        <input runat="server" id="inDepartmentName" class="form-control" type="text" title=""/>
                                    </div>
                                    <asp:Button runat="server"  type="submit" class="btn btn-success" Text="Add" ID="btnAddDepartment" OnClick="btnAddDepartment_Click" CausesValidation="False" ValidateRequestMode="Disabled"></asp:Button>
                                    <label runat="server" id="lblAddedDepartment"></label>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div  role="form">
                                    <div class="form-group">
                                        <label>Delete Department</label>
                                        <asp:DropDownList runat="server" ID="ddlDepartment" class="form-control" title="" DataSourceID="SqlDataSourceDepartment" DataTextField="Department_name" DataValueField="Id">
                                            
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Button type="submit" class="btn btn-danger" Text="Delete" runat="server" OnClick="btnDeleteDepartment_Click" id="btnDeleteDepartment"></asp:Button>
                                    <asp:SqlDataSource ID="SqlDataSourceDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Department]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <div class="col-lg-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Job Category
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div role="form">
                                    <div class="form-group">
                                        <label>Add Job Category</label>
                                        <input runat="server" class="form-control" type="text" title="" id="inJobCategoryName"/>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-success" id="btnAddJobCategory" Text="Add" OnClick="btnAddJobCategory_Click"></asp:Button>
                                    <label runat="server" id="lblAddedJobCategory"></label>
                                     </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div  role="form">
                                    <div class="form-group">
                                        <label>Delete Job Category</label>
                                        <asp:DropDownList runat="server" class="form-control" title="" id="ddlJobCategory" DataSourceID="SqlDataSourceJobCategory" DataTextField="category" DataValueField="Id">
                                           
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-danger" id="btnDeleteJobCategory" Text="Delete" OnClick="btnDeleteJobCategory_Click"></asp:Button>
                                    <asp:SqlDataSource ID="SqlDataSourceJobCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Job_category]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <div class="col-lg-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Job Title
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div  role="form">
                                    <div class="form-group">
                                        <label>Add Job Title</label>
                                        <input runat="server" class="form-control" type="text" title="" id="inJobTitle"/>
                                        <label>Select Job Category</label>
                                        <asp:DropDownList runat="server" class="form-control" title="" id="ddlJobCategoryJob" DataSourceID="SqlDataSourceJobCategory" DataTextField="category" DataValueField="Id">
                                          
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-success" id="btnAddJob" Text="Add" OnClick="btnAddJob_Click"></asp:Button>
                                    <label runat="server" id="lblAddedJob"></label>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div role="form">
                                    <div class="form-group">
                                        <label>Delete Job Title</label>
                                        <asp:DropDownList runat="server" class="form-control" title="" id="ddlJob" DataSourceID="SqlDataSourceJob" DataTextField="JobName" DataValueField="Id">
                                            
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-danger" id="btnDeleteJob" Text="Delete" OnClick="btnDeleteJob_Click"></asp:Button>
                                    <asp:SqlDataSource ID="SqlDataSourceJob" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Job]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <div class="col-lg-7">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        Skills
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-6">
                                <div  role="form">
                                    <div class="form-group">
                                        <label>Add Skill</label>
                                        <input runat="server" class="form-control" type="text" title="" id="inSkillName"/>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-success" id="btnAddSkill" Text="Add" OnClick="btnAddSkill_Click"></asp:Button>
                                    <label runat="server" id="lblAddedSkill"></label>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                            <div class="col-lg-6">
                                <div role="form">
                                    <div class="form-group">
                                        <label>Delete Skill</label>
                                        <asp:DropDownList runat="server" class="form-control" title="" id="ddlSkills" DataSourceID="SqlDataSourceSkills" DataTextField="Skill_name" DataValueField="Id">
                                           
                                        </asp:DropDownList>
                                    </div>
                                    <asp:Button runat="server" type="submit" class="btn btn-danger" id="btnDeleteSkill" Text="Delete" OnClick="btnDeleteSkill_Click"></asp:Button>
                                    <asp:SqlDataSource ID="SqlDataSourceSkills" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringHRManagement %>" SelectCommand="SELECT * FROM [Skills]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
        </div>
    </div>
    <!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
        </form>

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

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="../bower_components/raphael/raphael-min.js"></script>
<script src="../bower_components/morrisjs/morris.min.js"></script>
<script src="../js/morris-data.js"></script>

<!-- jQuery -->
<script src="../bower_components/jquery/dist/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="../dist/js/sb-admin-2.js"></script>


<!-- Page-Level Demo Scripts - Tables - Use for reference -->
<script>
    $(document).ready(function () {
        $('#dataTables-example1').DataTable({
            responsive: true
        });
    });
</script>

</body>
</html>
