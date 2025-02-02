<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="Group5.resetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        body {
            background-color: #2C3E50;
            color: white;
        }
        .container {
            background-color: #F4F1DE;
            border-radius: 15px;
            padding: 30px;
        }
        .profile-section {
            text-align: center;
        }
        .profile-section img {
            border: 3px solid #F1C40F;
        }
        h4 {
            color: #F1C40F;
            font-weight: bold;
        }
        label {
            color: #2C3E50;
            font-weight: bold;
        }
        .profile-button {
            background-color: #2C3E50;
            color: white;
            border: none;
            transition: 0.3s ease-in-out;
        }
        .profile-button:hover {
            background-color: #F1C40F;
            color: #2C3E50;
        }
        .btn-secondary {
            background-color: #F1C40F !important;
            color: #2C3E50 !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row">
                <!-- Profile Image Section -->
                <div class="col-md-3 border-end text-center">
                    <div class="profile-section p-3">
                        <img class="rounded-circle mt-3" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                        <h5 class="mt-3 text-dark">Edogaru</h5>
                        <div class="d-grid gap-2 mt-3">
                            <asp:Button ID="editprofile" runat="server" Text="Edit Information" class="btn profile-button" OnClick="editprofile_Click"/>
                            <asp:Button ID="resetPassword1" runat="server" Text="Reset Password" class="btn profile-button" OnClick="resetPassword_Click1"/>
                            <asp:Button ID="editimg" runat="server" Text="Update Image" class="btn profile-button" OnClick="editimg_Click"/>
                            <asp:Button ID="showBooks" runat="server" Text="View Books" class="btn profile-button" OnClick="showBooks_Click"/>
                            <asp:Button ID="showRooms" runat="server" Text="View Rooms" class="btn profile-button" OnClick="showRooms_Click"/>
                        </div>
                    </div>
                </div>

                <!-- Reset Password Form Section -->
                <div class="col-md-5">
                    <div class="p-3">
                        <h4 class="text-center">Reset Password</h4>
                        <div class="row mt-3">
                            <div class="col-md-12">
                                <label class="labels">Current Password</label>
                                <asp:TextBox ID="current" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-12 mt-2">
                                <label class="labels">New Password</label>
                                <asp:TextBox ID="newpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <div class="col-md-12 mt-2">
                                <label class="labels">Confirm Password</label>
                                <asp:TextBox ID="confirm" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                            </div>
                            <asp:Label ID="checkPassword" runat="server" Text="" Visible="false" CssClass="text-danger mt-2"></asp:Label>
                        </div>

                        <!-- Action Buttons -->
                        <div class="mt-4 text-center">
                            <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Save" class="btn profile-button"/>
                            <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" Text="Cancel" class="btn btn-secondary"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="LibraryProject.resetPassword" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous"/>
    <style>
        body { background-color: #f8f9fa; }
        .container { max-width: 600px; margin-top: 50px; }
        .card { border-radius: 15px; }
        .profile-button { background-color: #2C3E50; color: white; }
        .profile-button:hover { background-color: #F1C40F; color: black; }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Library System</a>
        </div>
    </nav>
    <div class="container">
        <div class="card shadow p-4">
            <h4 class="text-center">Reset Password</h4>
            <form id="form1" runat="server">
                <div class="mb-3">
                    <label class="form-label">Current Password</label>
                    <asp:TextBox ID="current" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">New Password</label>
                    <asp:TextBox ID="newpassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label class="form-label">Confirm Password</label>
                    <asp:TextBox ID="confirm" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Label ID="checkPassword" runat="server" CssClass="text-danger d-block" Visible="false"></asp:Label>
                <div class="d-grid gap-2 mt-3">
                    <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Save" CssClass="btn profile-button" />
                    <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" Text="Cancel" CssClass="btn btn-secondary" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>--%>
