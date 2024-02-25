<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Awesome_Sneakers.pages.loginaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
        }

        .tabs {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            border-bottom: 2px solid #ddd;
        }

        .tab {
            padding: 15px;
            cursor: pointer;
            font-weight: bold;
            text-align: center;
            flex-grow: 1;
        }

        .tab:hover {
            background-color: #f9f9f9;
        }

        .active-tab {
            background-color: #fff;
            border-bottom: 2px solid #007bff;
        }

        .form {
            padding: 20px;
        }

        .input {
            width: 95%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .button {
            width: 100%;
            padding: 10px;
            background-color: #F3B340;
            color: #000;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .button:hover {
            color: #fff;
            transition:0.5s;
        }
    </style>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <section>
    <div class="container">
        <div class="tabs">
            <div class="tab active-tab" onclick="showTab('signin')">Sign In</div>
            <div class="tab" onclick="showTab('signup')">Sign Up</div>
        </div>
        <div class="form" id="signin">
            <h2>Sign In</h2>
            <asp:TextBox ID="Username" runat="server" placeholder="Username" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="Password" runat="server" placeholder="Password" CssClass="input"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Sign In" CssClass="button" OnClick="Button1_Click" />
            <asp:Label ID="errorMessageLabel" runat="server" Text=""></asp:Label>
  
        </div>
        <div class="form" id="signup" style="display: none;">
            <h2>Sign Up</h2>
            <asp:TextBox ID="name" runat="server" placeholder="Fullname" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="email" runat="server" placeholder="Email" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="contact" runat="server" placeholder="Contact" CssClass="input"></asp:TextBox>
            <asp:TextBox ID="password2" runat="server" placeholder="Password" CssClass="input"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="Sign Up" CssClass="button" OnClick="Button2_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
     
        </div>
    </div>
</section>
        </div>
    </form>
    <script >
        function showTab(tabName) {
            const tabs = ['signin', 'signup'];
            tabs.forEach(tab => {
                document.getElementById(tab).style.display = tab === tabName ? 'block' : 'none';
            });
            document.querySelector('.tab.active-tab').classList.remove('active-tab');
            document.querySelector(`.tab:contains('${tabName}')`).classList.add('active-tab');
        }

        document.querySelector('.tab').click();
    </script>
</body>
</html>
