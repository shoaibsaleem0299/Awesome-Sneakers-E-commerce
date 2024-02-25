<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="Awesome_Sneakers.pages.shop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Section -->

    <section class="shopSection">
        <img src="./Images/allProduct-bg.jpg" alt="">

        <h1>ALL PRODUCTS</h1>

        <div class="sectionCard">
            <div class="card" style="width: 18rem;">
                <img class="card-img-top" src="../assets/Images/home_image_1.png" alt="Card image cap">
                <div class="card-body">
                    <h5 class="card-title">Awesome Sneakers</h5>
                    <p class="card-text">$19.9</p>
                    <a href="#" class="btn card-btn">Add Cart</a>
                </div>
            </div>
        </div>
    </section>

    <!-- End -->

</asp:Content>
