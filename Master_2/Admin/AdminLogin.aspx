<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Master_2.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login - HealthCheck360</title>
     <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Admin Login</h2>
                </div>
                <div class="card-body">
                    <form method="POST">
                        
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="email" AutoCompleteType="Email" CssClass="input--style-5" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">
                                    <div class="col-3">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" value="+91" disabled name="area_code">
                                            <label class="label--desc">Country Code</label>
                                        </div>
                                    </div>
                                    <div class="col-9">
                                        <div class="input-group-desc">
                                            <asp:TextBox ID="phone" AutoCompleteType="Cellular" CssClass="input--style-5" runat="server" required></asp:TextBox>
                                    
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                       
                         <div class="form-row">
                            <div class="name">Password</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pwd" CssClass="input--style-5" runat="server" required Columns="5" Rows="3" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:Button ID="Login" runat="server" Text="Login" CssClass="btn btn--radius-2 btn--red" OnClick="Login_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
        </div>
    </form>
</body>
</html>
