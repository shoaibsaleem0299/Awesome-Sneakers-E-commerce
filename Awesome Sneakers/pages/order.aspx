<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="Awesome_Sneakers.pages.order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Place Your Order</h2>
            <table class="table table-bordered" >
                <tr>
                    <td>ID :</td>
                    <td><asp:TextBox ID="id" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name :</td>
                    <td><asp:TextBox ID="text1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><asp:TextBox ID="text2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Quantity :</td>
                    <td><asp:TextBox ID="text3" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <asp:Button ID="order" runat="server" Text="Place Order" OnClick="order_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
