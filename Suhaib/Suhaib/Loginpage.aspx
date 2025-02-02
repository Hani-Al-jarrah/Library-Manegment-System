<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginform.aspx.cs" Inherits="Group5.Suhaib.Loginform" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="row w-100">

                <div class="card p-0">
                    <div class=" row g-0">
                        <div class="col-md-6">
                            <img src="login.jpg" alt="..." class="img-fluid w-100 rounded-start" />
                        </div>
                        <div class="col-md-6 d-flex align-items-center justify-content-center flex-column ">
                            <div class="card-body w-100 d-flex align-items-center justify-content-center flex-column">
                                <h3 class="text-center">Login</h3>
                                <div class="form-group mt-3 w-100">
                                    <label>University ID</label>
                                    <asp:TextBox ID="uniID" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group mt-3 w-100">
                                    <label>Password</label>
                                    <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="text-center mt-4">
                                    <asp:Button ID="login" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="login_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
