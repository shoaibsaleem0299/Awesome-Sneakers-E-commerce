<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="contactUs.aspx.cs" Inherits="Awesome_Sneakers.pages.contactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Section -->

    <section class="customerSection">
        <h1 class="Customer-heading">CUSTOMER SERVICES</h1>

        <div class="customer-inner-container">
            <img src="../assets/Images/customer-bg.jpg" alt="">

            <div class="contact-info">
                <h4>CONTACT US</h4>

                <p>Have questions ?</p>
                <p>
                    They might be answered in our FAQ.
                    We tried to cover just about everything you need to know.
                </p>
                <p>
                    You can also email us at: info@mysite.com

                    or fill in our contact form:
                </p>
                <div class="contact-info-textarea">
                    <div>
                        <input type="text" name="name" id="name" required placeholder="Name"><br>
                        <input type="email" name="email" id="email" required placeholder="Email"><br>
                        <input type="number" name="phone" id="phone" required placeholder="Phone"><br>
                    </div>
                    <div class="message-textarea">
                        <textarea name="message" id="message" cols="19" rows="4"
                            placeholder="type your Message here..."></textarea>
                    </div>
                </div>
                <input type="submit" value="Submit" class="contact-info-submit-btn">
            </div>
        </div>

    </section>

    <!-- End -->

</asp:Content>
