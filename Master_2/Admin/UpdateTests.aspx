<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateTests.aspx.cs" Inherits="Master_2.Admin.UpdateTests" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Tests - HealthChecks360</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-572-designer.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

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
    
        <div>
            
                       
    <div class="loader">
    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
       width="34px" height="40px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
      <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
        <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.8s" repeatCount="indefinite" />
      </rect>
      <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
        <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.8s" repeatCount="indefinite" />
      </rect>
      <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
        <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
        <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.8s" repeatCount="indefinite" />
      </rect>
    </svg>
  </div>
<%--     <% if (Session["admin"] != null) { %>--%>
<form id="form2" runat="server">
        <div>
            <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Test Report - </h2>
                </div>
                <div class="card-body">
                    
                        
                        <div class="form-row">
                            <div class="name">Patient Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pName" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Patient Age</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pAge" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Patient Gender</div>
                            <div class="value">
                                <asp:RadioButtonList ID="pGender" runat="server" CssClass="input--style-5" RepeatDirection="Horizontal" disabled>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                
                            </div>
                        </div>
                     
                        
                     <div class="form-row m-b-55">
                            <div class="name">Patient Weight</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pWeight" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Patient Height</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pHeight" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Patient Mobile</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pMobile" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Patient Email ID</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="pEmail" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>

                    <div class="form-row m-b-55">
                            <div class="name">Expected Report Date</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="expectDate" CssClass="input--style-5" type="date" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Report Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="reportName" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    
                    <div class="form-row">
                        <div class="name">Report Type</div>
                        <div class="value">
                            <div class="input-group">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <asp:DropDownList ID="reportType" runat="server" CssClass="input--style-5" disabled>
                                        <asp:ListItem>Pathology</asp:ListItem>
                                        <asp:ListItem>Mammography</asp:ListItem>
                                        <asp:ListItem>Cardiology</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                         <div class="form-row m-b-55">
                            <div class="name">Report Price</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="reportPrice" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <div class="form-row m-b-55">
                            <div class="name">Hospital Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="hName" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
    
                         <div class="form-row m-b-55">
                            <div class="name">Hospital Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="hEmail" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
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
                                            <asp:TextBox ID="hPhone" AutoCompleteType="Cellular" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                    
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="form-row m-b-55">
                            <div class="name">Hospital Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="hAddress" CssClass="input--style-5" runat="server" required disabled></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    <div class="form-row">
                        <div class="name">Report Status</div>
                        <div class="value">
                            <div class="input-group">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <asp:DropDownList ID="reportStatus" runat="server" CssClass="input--style-5">
                                        <asp:ListItem>Collect Pending</asp:ListItem>
                                        <asp:ListItem>Received</asp:ListItem>
                                        <asp:ListItem>Testing</asp:ListItem>
                                        <asp:ListItem>Success</asp:ListItem>
                                    </asp:DropDownList>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="form-row m-b-55">
                            <div class="name">Report</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:FileUpload ID="reportFlie" runat="server" CssClass="ïnput--style-5"/>
                                    
                                </div>
                            </div>
                        </div>
                     <div class="form-row m-b-55">
                            <div class="name">Remarks</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:TextBox ID="remarks" CssClass="input--style-5" runat="server" required></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div>
                            <asp:Button ID="UpdateReport" runat="server" Text="Update Report" CssClass="btn btn--radius-2 btn--red" OnClick="UpdateReport_Click"/>
                        </div>
                   
                </div>
            </div>
        </div>
    </div>
        </div>
    </form>
    <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>

  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>
            <!-- Jquery JS-->
    
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
  <script>
    setTimeout(function(){
        $('.loader').fadeToggle();
    }, 1500);
	
	$("a[href='#top']").click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });
  </script>
            </div>




    <%--<form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
</body>
</html>
