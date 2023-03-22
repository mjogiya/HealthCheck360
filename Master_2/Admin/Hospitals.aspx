<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hospitals.aspx.cs" Inherits="Master_2.Admin.Hospitals" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
     <title>Hospitals - HealthChecks360</title>
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
</head>
<body>
   
   
    
                       
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
     <% if (Session["admin"] != null) { %>
    <form id="form1" runat="server">
        <div>
            <header id="#top">
        <nav class="main-navigation navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="index.html">
                <img src="assets/images/white-logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="indexAdmin.aspx">Homepage</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Tests.aspx">Tests</a> </li>
                        <li class="nav-item"><a class="nav-link active" href="Hospitals.aspx">Hospitals</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Reports.aspx">Reports</a> </li>

                       
                    </ul>
                </div>
            </div>
        </nav>
    </header>
            <div class="page-banner change-name">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="header-text">
                        <h2><em>HOSPITALS</em> </h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod keoi tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

             <section class="trending-page">
        <div class="container expanded">
            <div class="col-lg-12">
                <div class="row grid">
                    <div class="grid-sizer"></div>

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="HospitalDatalist" RepeatColumns="3" ShowFooter="False" ShowHeader="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatDirection="Horizontal">
                        <ItemTemplate>
                             <div class="grid-item w-75 m-3">
                                <div class="trending-item">
                                    <div class="thumb">
                                        <span class="banner">
                                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="Label1" /></span>
                                        <div class="hover-effect">
                                            <div class="inner-content">
                                                <a href="">
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("phone") %>' runat="server" ID="priceLabel" />
                                                    </h4>
                                                    <br />
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("typeOfHospital") %>' runat="server" ID="categoryLabel" />
                                                    </h4>
                                                </a>
                                                <a class="icon" href="#">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg></a>
                                            </div>
                                        </div>
                                        <img src="../assets/images/hospital.jpg" alt="">
                                    </div>
                                </div>
                            </div>



<%--                            Id:
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                            name:
                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                            companyName:
                            <asp:Label Text='<%# Eval("companyName") %>' runat="server" ID="companyNameLabel" /><br />
                            email:
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /><br />
                            phone:
                            <asp:Label Text='<%# Eval("phone") %>' runat="server" ID="phoneLabel" /><br />
                            typeOfHospital:
                            <asp:Label Text='<%# Eval("typeOfHospital") %>' runat="server" ID="typeOfHospitalLabel" /><br />
                            address:
                            <asp:Label Text='<%# Eval("address") %>' runat="server" ID="addressLabel" /><br />
                            password:
                            <asp:Label Text='<%# Eval("password") %>' runat="server" ID="passwordLabel" /><br />
                            <br />--%>



                        </ItemTemplate>
                    </asp:DataList>


                    <asp:SqlDataSource runat="server" ID="HospitalDatalist" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [Hospital]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>

        </div>
    </form>
    <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="assets/js/isotope.min.js"></script>
  <script src="assets/js/owl-carousel.js"></script>

  <script src="assets/js/tabs.js"></script>
  <script src="assets/js/popup.js"></script>
  <script src="assets/js/custom.js"></script>
  <script>
    setTimeout(function(){
        $('.loader').fadeToggle();
    }, 1500);
	
	$("a[href='#top']").click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
    });
  </script>
     <%
         }
         else
         {
             Response.Redirect("./AdminLogin.aspx");
         }
     %>
</body>
</html>
