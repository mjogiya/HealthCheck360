﻿<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Master_2.index1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <form runat="server">
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
                        <li class="nav-item"><a class="nav-link active" href="index.aspx">Homepage</a> </li>
                        <li class="nav-item"><a class="nav-link" href="About.aspx">About Us</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Explore.aspx">Explore Work</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Trending.aspx">Reports</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Contact.aspx">Contact Us</a> </li>
                        <% if (Session["user"] == null) { %>
                        <li class="nav-item"><a class="nav-link" href="/Sign-in-up/Login.aspx">Login/Register</a> </li>
                        <%} else { %>
                         <li class="nav-item"><a class="nav-link" href="Logout.aspx"><%= Session["user"].ToString() %></a> </li>
                        <%} %>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="main-banner change-name">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="header-text">
                        <h6>We Provide Everything</h6>
                        <h2><em>HEALTH</em> CHECK 360</h2>
                        <div class="white-button">
                            <a href="">Discover More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="searchForm">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="searchFormTag"   >
                        <div class="row">
                            <div class="col-lg-3">
                                <fieldset>
                                    <label for="searchTitle" class="form-label">
                                    Search Report by Name</label>
                                  <asp:TextBox ID="searchReport" CssClass="searchText" placeholder="Type Report Name" runat="server"></asp:TextBox>
                                </fieldset>
                            </div>
                            <div class="col-lg-3">
                                <fieldset>
                                    <label for="chooseCategory" class="form-label">
                                    Choose Category</label>
                                    <asp:DropDownList ID="chooseCategory" CssClass="form-select" runat="server" >
                                        <asp:ListItem>Choose Category</asp:ListItem>
                                        <asp:ListItem>Blood Report</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                   
                                </fieldset>
                            </div>
                            <div class="col-lg-3">
                                <fieldset>
                                    <label for="chooseprice" class="form-label">
                                    Price Range</label>
                                    <asp:DropDownList ID="choosePrice" CssClass="form-select" runat="server" >
                                        <asp:ListItem>100 -250</asp:ListItem>
                                        <asp:ListItem>250 - 500</asp:ListItem>
                                        <asp:ListItem>500 - 1000</asp:ListItem>
                                        <asp:ListItem>1000+</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </fieldset>
                            </div>
                            <div class="col-lg-3">
                                <fieldset>
                                    <label for="chooseplan" class="form-label">
                                    Pick a Plan</label>
                                    <asp:DropDownList ID="chooseCategor" CssClass="form-select" runat="server" >
                                        <asp:ListItem>Blood Report</asp:ListItem>
                                        <asp:ListItem>other report</asp:ListItem>
                                        <asp:ListItem>other report1</asp:ListItem>
                                        <asp:ListItem>other report2</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                </fieldset>
                            </div>
                            <div class="col-lg-12">
                                <fieldset>
                                    <asp:Button ID="SearchReportbtn" runat="server" CssClass="main-button" Text="Search Report Now" OnClick="SearchReportbtn_Click" />
                                    
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="explore-work" id="explore">
        <div class="container expanded">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Explore Some Of Our Latest<br><em>Report Tested</em>.</h2>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="left-image">
                        <img src="assets/images/explore-work-left-image.jpg" alt="Interior Design Work">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="right-content">
                        <ul>
                            <li>
                                <h4>Latest Reports</h4>
                                <ul class="info">
                                    <li><span class="float-start">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-calendar-date-fill" viewBox="0 0 16 16">
                                            <path d="M4 .5a.5.5 0 0 0-1 0V1H2a2 2 0 0 0-2 2v1h16V3a2 2 0 0 0-2-2h-1V.5a.5.5 0 0 0-1 0V1H4V.5zm5.402 9.746c.625 0 1.184-.484 1.184-1.18 0-.832-.527-1.23-1.16-1.23-.586 0-1.168.387-1.168 1.21 0 .817.543 1.2 1.144 1.2z" />
                                            <path d="M16 14V5H0v9a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2zm-6.664-1.21c-1.11 0-1.656-.767-1.703-1.407h.683c.043.37.387.82 1.051.82.844 0 1.301-.848 1.305-2.164h-.027c-.153.414-.637.79-1.383.79-.852 0-1.676-.61-1.676-1.77 0-1.137.871-1.809 1.797-1.809 1.172 0 1.953.734 1.953 2.668 0 1.805-.742 2.871-2 2.871zm-2.89-5.435v5.332H5.77V8.079h-.012c-.29.156-.883.52-1.258.777V8.16a12.6 12.6 0 0 1 1.313-.805h.632z" />
                                        </svg>
                                        January 22, 2022 </span>
                                        <h6><a href="Explore.aspx">Complete Blood Count (CBC)
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
                                                <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
                                            </svg>
                                            </a></h6>
                                    </li>
                                    <li><span class="float-start">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-map-fill" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M16 .5a.5.5 0 0 0-.598-.49L10.5.99 5.598.01a.5.5 0 0 0-.196 0l-5 1A.5.5 0 0 0 0 1.5v14a.5.5 0 0 0 .598.49l4.902-.98 4.902.98a.502.502 0 0 0 .196 0l5-1A.5.5 0 0 0 16 14.5V.5zM5 14.09V1.11l.5-.1.5.1v12.98l-.402-.08a.498.498 0 0 0-.196 0L5 14.09zm5 .8V1.91l.402.08a.5.5 0 0 0 .196 0L11 1.91v12.98l-.5.1-.5-.1z" />
                                        </svg>
                                        Manhar Plot, Rajkot </span><em>   </em></li>
                                </ul>
                       
                           
                                                           
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="whats-trending">
        <div class="container expanded">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="section-heading">
                        <h2>Check Out our<br><em>Testing team</em>.</h2>
                    </div>
                    <div class="left-content">
                        <p>
                            Lorem Ipsum dolor sit amet, consectetur adipsicing kengan omeg kohm tokito adipcingi elit, sed do eismuod larehai med at vero eos et suscipit neque rerum molestias accusamus et iusto odio dignissimos ducimus qui blanditis.</p>
                        <div class="primary-button">
                            <a href="">Discover More</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="right-image">
                        <div class="thumb">
                            <div class="hover-effect">
                                <div class="inner-content">
                                    <h4><a href="">Our Experts</a></h4>
                                    <span>Lab Testing</span>
                                </div>
                            </div>
                            <img src="assets/images/Team1.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
   
        </form>
</asp:Content>


