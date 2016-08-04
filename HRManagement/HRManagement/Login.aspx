<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HRManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Login</title>
    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>

</head>
<body>
    <div  class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                
                <!--<h1 class="text-center">NEXTSENSE</h1>
                <img src="../images/logo.png" >-->
                
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form id="login" runat="server" role="form">
                            <fieldset>
                                <div class="form-group">
                                    <asp:TextBox runat="server" id="inUsername" Text="Username"  />
                                    <input type="text" id="proba" runat="server" required>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox runat="server" id="inPassword"/>
                                </div>
                                <div class="checkbox">
                                    <label id="theLable" runat="server">some lable</label>
                                       <!-- <input name="remember" type="checkbox" value="Remember Me"/>Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
                               <!-- <button class="btn btn-lg btn-success btn-block" id="btnLogin">Login</button> -->
                                </div>
                                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-lg btn-success btn-block" OnClick="btnLogin_Click" />
                                    <asp:Label ID="lblInvalidUserPassword" runat="server"></asp:Label>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>
</body>
</html>
