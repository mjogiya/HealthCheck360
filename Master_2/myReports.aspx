<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="myReports.aspx.cs" Inherits="Master_2.myReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <header id="#top">
        <nav class="main-navigation navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand" href="index.aspx">
                <img src="assets/images/white-logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.aspx">Homepage</a> </li>
                        <li class="nav-item"><a class="nav-link" href="About.aspx">About Us</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Explore.aspx">Explore Work</a> </li>
                        <li class="nav-item"><a class="nav-link active" href="Trending.aspx">Reports</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact Us</a> </li>
                        <% if (Session["user"] == null) { %>
                        <li class="nav-item"><a class="nav-link" href="/Sign-in-up/Login.aspx">Login/Register</a> </li>
                        <%} else { %>
                         <li class="nav-item"><a class="nav-link" href=""><%= Session["user"].ToString() %></a> </li>
                        <%} %>
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
                        <h2><em>My Reports</em> </h2>
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

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="TestDatalist" RepeatColumns="3" ShowFooter="False" ShowHeader="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatLayout="Flow">
                        <ItemTemplate>
                            
                            <div class="grid-item">
                                <div class="trending-item">
                                    <div class="thumb">
                                        <span class="banner">
                                            <asp:Label Text='<%# Eval("hName") %>' runat="server" ID="Label1" /></span>
                                        <div class="hover-effect">
                                            <div class="inner-content">
                                                <a href="">
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("reportName") %>' runat="server" ID="Label2" />
                                                    </h4>
                                                    <br />
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("pName") %>' runat="server" ID="Label3" />
                                                    </h4>
                                                    <br />
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("reportStatus") %>' runat="server" ID="Label4" />
                                                    </h4>
                                                    <%--<asp:Button ID="Button1" runat="server" Text="Download Report" CssClass="main-button"/>--%> 
                                                </a>
                                                <a class="icon" href="">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg></a>
                                            </div>
                                        </div>
                                        <img src="../assets/images/reports.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                          
                      <%--      if(e.CommandName=="cmd_download")
            {
                getcon();
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/") + e.CommandArgument);
                Response.End();
            }--%>

<%--
                            Id:
                            <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                            pName:
                            <asp:Label Text='<%# Eval("pName") %>' runat="server" ID="pNameLabel" /><br />
                            pAge:
                            <asp:Label Text='<%# Eval("pAge") %>' runat="server" ID="pAgeLabel" /><br />
                            pGender:
                            <asp:Label Text='<%# Eval("pGender") %>' runat="server" ID="pGenderLabel" /><br />
                            pWeight:
                            <asp:Label Text='<%# Eval("pWeight") %>' runat="server" ID="pWeightLabel" /><br />
                            pHeight:
                            <asp:Label Text='<%# Eval("pHeight") %>' runat="server" ID="pHeightLabel" /><br />
                            pMobile:
                            <asp:Label Text='<%# Eval("pMobile") %>' runat="server" ID="pMobileLabel" /><br />
                            pEmail:
                            <asp:Label Text='<%# Eval("pEmail") %>' runat="server" ID="pEmailLabel" /><br />
                            Date:
                            <asp:Label Text='<%# Eval("Date") %>' runat="server" ID="DateLabel" /><br />
                            expectDate:
                            <asp:Label Text='<%# Eval("expectDate") %>' runat="server" ID="expectDateLabel" /><br />
                            reportID:
                            <asp:Label Text='<%# Eval("reportID") %>' runat="server" ID="reportIDLabel" /><br />
                            reportName:
                            <asp:Label Text='<%# Eval("reportName") %>' runat="server" ID="reportNameLabel" /><br />
                            reportType:
                            <asp:Label Text='<%# Eval("reportType") %>' runat="server" ID="reportTypeLabel" /><br />
                            reportPrice:
                            <asp:Label Text='<%# Eval("reportPrice") %>' runat="server" ID="reportPriceLabel" /><br />
                            hospitalID:
                            <asp:Label Text='<%# Eval("hospitalID") %>' runat="server" ID="hospitalIDLabel" /><br />
                            hName:
                            <asp:Label Text='<%# Eval("hName") %>' runat="server" ID="hNameLabel" /><br />
                            hEmail:
                            <asp:Label Text='<%# Eval("hEmail") %>' runat="server" ID="hEmailLabel" /><br />
                            hAddress:
                            <asp:Label Text='<%# Eval("hAddress") %>' runat="server" ID="hAddressLabel" /><br />
                            hPhone:
                            <asp:Label Text='<%# Eval("hPhone") %>' runat="server" ID="hPhoneLabel" /><br />
                            reportStatus:
                            <asp:Label Text='<%# Eval("reportStatus") %>' runat="server" ID="reportStatusLabel" /><br />
                            reportFile:
                            <asp:Label Text='<%# Eval("reportFile") %>' runat="server" ID="reportFileLabel" /><br />
                            Remarks:
                            <asp:Label Text='<%# Eval("Remarks") %>' runat="server" ID="RemarksLabel" /><br />
                            <br />--%>





                        </ItemTemplate>
                    </asp:DataList>


                    <asp:SqlDataSource runat="server" ID="TestDatalist" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tests] WHERE ([hEmail] = @hEmail)">
                        <SelectParameters>
                            <asp:SessionParameter SessionField="user" Name="hEmail" Type="String"></asp:SessionParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource runat="server" ID="ReportsDatalist" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [report]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>

</asp:Content>

