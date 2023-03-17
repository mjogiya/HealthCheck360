<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="Explore.aspx.cs" Inherits="Master_2.Explore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
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
                        <li class="nav-item"><a class="nav-link active" href="Explore.aspx">Explore Work</a> </li>
                        <li class="nav-item"><a class="nav-link" href="Trending.aspx">Reports</a> </li>
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
                        <h2><em>Explore</em> Our Work</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod keoi tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <section class="explore-item">
        <div class="container expanded">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>Minimalistic Design for 2 bedrooms</h2>
                    </div>
                    <div class="main-image">                   
                        <img src="assets/images/explore-item-01.jpg" alt="master bedroom design">
                    </div>
                    <div class="project-info">
                        <div class="row">
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Tester:</h6>
                                    <span>Mayur Jogiya</span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Client:</h6>
                                    <span>Maruti Hospital</span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Terms:</h6>
                                    <span>6-12 Months</span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Report Type:</h6>
                                    <span>Blood Report</span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Strategy:</h6>
                                    <span>Clean &amp; Minimal</span>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div class="info-item">
                                    <h6>Date:</h6>
                                    <span>January 22, 2022</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto toril beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequida nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.   
                    <br><br>This is an Interior Designer HTML5 Template that is 100% totally free to download, edit and use for your commercial or business websites. You are <strong>NOT allowed</strong> to redistribute the downloadable ZIP file of this template on any other website. 
                    Please <a rel="nofollow" href="https://templatemo.com/contact" target="_blank">contact TemplateMo</a> website for more information. Thank you. <strong>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</strong>, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis.</p>
                </div>
                <div class="col-lg-6">
                    <img src="assets/images/explore-item-02.jpg" alt="">
                </div>
                <div class="col-lg-6">
                    <img src="assets/images/explore-item-03.jpg" alt="">
                </div>
                <div class="col-lg-12">
                    <div class="down-content">
                        <h4>Incredible Work</h4>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto toril beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequida nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt.</p>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="projects-pagination">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="left-pagination">
                                    <img class="float-start" src="assets/images/pagination-left-image.jpg" alt="">
                                    <div class="right-content">
                                        <a href="Explore.aspx"><h6>Minimalistic Living Room</h6></a>
                                        <span>Interior Design</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="right-pagination">
                                    <img class="float-end" src="assets/images/pagination-right-image.jpg" alt="">
                                    <div class="float-end left-content">
                                        <a href="Explore.aspx"><h6>Futuristic Interior Concept</h6></a>
                                        <span>Interior Design</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="call-to-action">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <h2>Looking to Work On A Project ?</h2>
                </div>
                <div class="col-lg-4">
                    <div class="white-button">
                        <a href="">Contact Us Now</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

