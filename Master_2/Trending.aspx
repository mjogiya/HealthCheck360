<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Trending.aspx.cs" Inherits="Master_2.Trending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
     <% if (Session["user"] != null) { %>

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
                        <h2><em>Check</em> Trending Work</h2>
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

                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1" RepeatColumns="3" ShowFooter="False" ShowHeader="False" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatLayout="Flow">
                        <ItemTemplate>
                            <div class="grid-item">
                                <div class="trending-item">
                                    <div class="thumb">
                                        <span class="banner">
                                            <asp:Label Text='<%# Eval("name") %>' runat="server" ID="Label1" /></span>
                                        <div class="hover-effect">
                                            <div class="inner-content">
                                                <a href="">
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("price") %>' runat="server" ID="priceLabel" />
                                                    </h4>
                                                    <br />
                                                    <h4>
                                                        <asp:Label Text='<%# Eval("category") %>' runat="server" ID="categoryLabel" />
                                                    </h4>
                                                </a>
                                                <a class="icon" href="BookReport.aspx?rId=<%# Eval("id") %>">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-arrow-right-short" viewBox="0 0 16 16">
                                                        <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z" />
                                                    </svg></a>
                                            </div>
                                        </div>
                                        <img src="assets/images/reports.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                          

                        </ItemTemplate>
                    </asp:DataList>

                  
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [report]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </section>
    

    <section class="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <h2>Hire us to Work on a Project?</h2>
                </div>
                <div class="col-lg-4">
                    <div class="white-button">
                        <a href="#">Contact Us Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%
         }
         else
         {
             Response.Redirect("./Sign-in-up/Login.aspx");
         }
     %>
</asp:Content>

