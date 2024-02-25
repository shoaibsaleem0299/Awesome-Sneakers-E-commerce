<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Awesome_Sneakers.pages.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
        }

        .dashboard-container {
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .tabs {
            display: flex;
            margin-bottom: 20px;
        }

        .tab {
            flex: 1;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 4px 4px 0 0;
        }

            .tab:hover {
                background-color: #45a049;
            }

        .tab-content {
            display: none;
        }

            .tab-content.active {
                display: block;
            }

        .product-tab-content {
            padding-top: 20px;
        }

        .product-card {
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 10px;
            margin-bottom: 15px;
        }

            .product-card h3 {
                margin-bottom: 10px;
            }

        .product-actions {
            display: flex;
            justify-content: flex-end;
            margin-top: 10px;
        }

            .product-actions button, button {
                margin-bottom: 5px;
                margin-left: 10px;
                padding: 8px 16px;
                cursor: pointer;
                background-color: #F3B340;
                color: #fff;
                border: none;
                border-radius: 4px;
                transition: background-color 0.3s;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="dashboard-container">
            <div class="tabs">
                <div class="tab" onclick="changeTab('product-tab')">Manage Products</div>
                <div class="tab" onclick="changeTab('order-tab')">View Orders</div>
            </div>

            <div id="product-tab-content" class="tab-content product-tab-content active">
                <!-- Add product management content here -->
                <h2>Product Management</h2>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
                    Add Product
                </button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalCenterTitle">Products</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                Unidentified
                            </div>
                            <div class="modal-body">
                                <asp:TextBox ID="name" runat="server" placeholder="Product Name" class="form-control"></asp:TextBox><br />
                                <asp:TextBox ID="description" runat="server" placeholder="Product Description" class="form-control"></asp:TextBox><br />
                                <asp:TextBox ID="price" runat="server" placeholder="Product Price" class="form-control"></asp:TextBox>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <asp:Button ID="add" runat="server" Text="Add" CssClass="btn btn-primary" OnClick="add_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Sample Product Card -->



                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CssClass="table table-bordered">
                    <Columns>

                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" InsertVisible="False" SortExpression="id"></asp:BoundField>
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description"></asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString3 %>" SelectCommand="SELECT * FROM [ProductTable]"></asp:SqlDataSource>





                <div class="product-actions">

                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editModal">
                        Edit
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="editModalLongTitle">Edit Product</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Product ID" class="form-control"></asp:TextBox><br />
                                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Product Name" class="form-control"></asp:TextBox><br />
                                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Product Description" class="form-control"></asp:TextBox><br />
                                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Product Price" class="form-control"></asp:TextBox>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button ID="update" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="update_Click" />
                                </div>
                            </div>
                        </div>
                    </div>



                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#deleteModal">
                        Delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="deleteModalCenterTitle">Delete Product</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <asp:TextBox ID="productID" runat="server" placeholder="Product ID" class="form-control"></asp:TextBox><br />
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <asp:Button ID="delete" runat="server" Text="Delete" CssClass="btn btn-primary" OnClick="delete_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div id="order-tab-content" class="tab-content">
            <!-- Add order viewing content here -->
            <h2>View Orders</h2>
            <!-- Add table or content for viewing orders -->
<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table table-bordered">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id"></asp:BoundField>
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
        <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity"></asp:BoundField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString5 %>" SelectCommand="SELECT * FROM [Order]"></asp:SqlDataSource>
        </div>


        <script>
            function changeTab(tabName) {
                // Hide all tab contents
                var tabContents = document.getElementsByClassName('tab-content');
                for (var i = 0; i < tabContents.length; i++) {
                    tabContents[i].classList.remove('active');
                }

                // Show the selected tab content
                var selectedTabContent = document.getElementById(tabName + '-content');
                selectedTabContent.classList.add('active');
            }
        </script>
    </form>
</body>
</html>
