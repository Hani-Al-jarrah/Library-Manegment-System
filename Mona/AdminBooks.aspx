<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBooks.aspx.cs" Inherits="Group5.Mona.AdminBooks" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #2C3E50;
            color: #F4F1DE;
        }

        .container {
            margin-top: 50px;
        }

        .btn-primary {
            background-color: #2C3E50;
            border-color: #F1C40F;
        }

            .btn-primary:hover {
                background-color: #F1C40F;
                color: #2C3E50;
            }

        .table thead {
            background-color: #F1C40F;
            color: #2C3E50;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="container">
            <h2 class="text-center">Book Management</h2>
            <div id="form2" runat="server">
                <div class="mb-3">
                    <label for="txtBookId" class="form-label">Book ID</label>
                    <asp:TextBox ID="txtBookId" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtBookName" class="form-label">Book Name</label>
                    <asp:TextBox ID="txtBookName" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtAuthor" class="form-label">Author</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="txtDescription" class="form-label">Description</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control" required></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="fileUpload" class="form-label">Book Image</label>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control" />
                </div>

                <!-- Image Preview -->
                <%-- <div class="mb-3">
                    <asp:Image ID="imgPreview" runat="server" CssClass="img-thumbnail" Width="150px" Height="150px" Visible="false" />
                </div>--%>



                <asp:Button ID="btnAdd" runat="server" Text="Add Book" CssClass="btn btn-primary" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" runat="server" Text="Update Book" CssClass="btn btn-warning" OnClick="btnUpdate_Click" Visible="false" />
                <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>
                <asp:HiddenField ID="hiddenOriginalBookId" runat="server" />
                <asp:HiddenField ID="hiddenOriginalBookName" runat="server" />

                <h3 class="mt-4">Book List</h3>
                <asp:GridView ID="gvBooks" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                        <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="Description" HeaderText="Description" />
                        <%--<asp:BoundField DataField="Status" HeaderText="Status" />--%>
                        <asp:TemplateField HeaderText="Image">
                            <ItemTemplate>
                                <img src='<%# Eval("ImagePath") %>' alt="Book Image" width="50" height="50" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-warning btn-sm" CommandArgument='<%# Eval("BookID") %>' OnClick="btnEdit_Click" />
                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" CommandArgument='<%# Eval("BookID") %>' OnClick="btnDelete_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <h3 class="mt-4">Borrow Requests</h3>
                <asp:GridView ID="gvRequestedBooks" runat="server" CssClass="table table-striped" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="BookID" HeaderText="Book ID" />
                        <asp:BoundField DataField="BookName" HeaderText="Book Name" />
                        <asp:BoundField DataField="Author" HeaderText="Author" />
                        <asp:BoundField DataField="BorrowDate" HeaderText="Borrow Date" />
                        <asp:BoundField DataField="ReturnDate" HeaderText="Return Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" />

                        <asp:TemplateField HeaderText="Actions">
                            <ItemTemplate>
                                <asp:Button ID="btnApprove" runat="server" Text="Approve" CssClass="btn btn-success btn-sm"
                                    CommandArgument='<%# Eval("BookID") %>' OnClick="btnApprove_Click"
                                    Visible='<%# Eval("ShowActionButtons") %>' />

                                <asp:Button ID="btnReject" runat="server" Text="Reject" CssClass="btn btn-danger btn-sm"
                                    CommandArgument='<%# Eval("BookID") %>' OnClick="btnReject_Click"
                                    Visible='<%# Eval("ShowActionButtons") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


            </div>
        </div>
    </form>
</body>
</html>

