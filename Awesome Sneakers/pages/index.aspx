<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Awesome_Sneakers.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Section-1 -->

    <section class="section1">
        <div class="container">
            <img src="../assets/Images/logo.png" alt="Logo" width="250" height="250">
            <p
                style="font-size: 55px; letter-spacing: 5px; color: #F3B340; padding-left: 8px; margin: 0px; letter-spacing: 3px;">
                Awesome Sneakers</p>
            <button class="section1-btn">SHOP NOW</button>
        </div>
    </section>

    <!-- End -->

    <!-- Section-2 -->
    <section class="section2">
        <div class="row section2_row">
            <div class="col-6 section2_col1">
                <img width="100%" src="../assets/Images/man_bg.png" alt="">
                <h1>Men Collection</h1>
            </div>
            <div class="col-6 section2_col2">
                <img width="100%" src="../assets/Images/woman_bg.png" alt="">
                <h1>Women Collection</h1>
            </div>
        </div>
    </section>
    <!-- End -->

    <!-- Section-3 -->
    <div class="section3">
        <div class="section3_container">
            <h1>Final Sale 40% - 60%</h1>
            <button class="section1-btn">SHOP SALE</button>
        </div>
    </div>

    <!-- End -->

    <!-- Section 4 -->
    <Section class="section4">
        <ul class="flex-container">
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_1.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_2.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_3.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_4.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_5.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
            <li class="flex-item">
                <a href="#">
                    <img class="home_image" src="../assets/Images/home_image_6.png" alt="Images">
                </a>
                <button class="section4_btn">Veiw Details</button>
            </li>
        </ul>
    </Section>
    <!-- End -->

    
</asp:Content>
