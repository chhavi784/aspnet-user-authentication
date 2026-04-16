<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loginpage.aspx.cs" Async="true" Inherits="loginpage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <meta content="width=device-width, initial-scale=1" name="viewport">

    <!-- ✅ Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

    <!-- ✅ Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- ✅ Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

    <!-- ✅ AdminLTE -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/admin-lte/2.4.18/css/AdminLTE.min.css">

    <!-- ✅ iCheck -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.2/skins/square/blue.css">
</head>

<body class="hold-transition login-page">

<form id="form1" runat="server">

<div class="login-box">

    <div class="login-logo">
        <b>Login</b>
    </div>

    <div class="login-box-body">

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtid" runat="server" CssClass="form-control" placeholder="Login ID"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="txtid" ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
        </div>

        <div class="form-group has-feedback">
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                CssClass="form-control" placeholder="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                ControlToValidate="txtPassword" ErrorMessage="Required" ForeColor="Red" Display="Dynamic" />
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
        </div>

        <div class="row">
            <div class="col-xs-4">
                <asp:Button ID="loginbtn" runat="server" Text="Sign In"
                    CssClass="btn btn-primary btn-block btn-flat"
                    OnClick="loginbtn_Click" />
            </div>
        </div>

        <br />

        <div class="text-center">
            <a href="#">Version : 1.1</a>
        </div>

        <asp:Label ID="lblerror" runat="server" ForeColor="Red" Visible="false"></asp:Label>

    </div>

</div>

</form>

<!-- ✅ Scripts -->
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/iCheck/1.0.2/icheck.min.js"></script>

</body>
</html>