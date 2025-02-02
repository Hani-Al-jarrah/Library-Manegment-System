<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateImg.aspx.cs" Inherits="Group5.updateImg" %> 

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Profile Image</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
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
                        <img class="rounded-circle mt-3" width="150px" src="\img\img1.png">
                        <h5 class="mt-3 text-dark">Edogaru</h5>
                        <div class="d-grid gap-2 mt-3">
                            <asp:Button ID="Button5" runat="server" Text="Edit Information" class="btn profile-button"/>
                            <asp:Button ID="resetPassword" runat="server" Text="Reset Password" class="btn profile-button" OnClick="resetPassword_Click"/>
                            <asp:Button ID="editimg" runat="server" Text="Update Image" class="btn profile-button" OnClick="editimg_Click"/>
                            <asp:Button ID="showBooks" runat="server" Text="View Books" class="btn profile-button" OnClick="showBooks_Click"/>
                            <asp:Button ID="showRooms" runat="server" Text="View Rooms" class="btn profile-button" OnClick="showRooms_Click"/>
                        </div>
                    </div>
                </div>

                <!-- Profile Form Section -->
                <div class="col-md-5">
                    <div class="p-3">
                        <h4 class="text-center">Update Profile Image</h4>
                        <div class="row mt-3">
                         <!-- File Upload Section -->
                            <div class="col-md-12">
                                <label for="fileUpload" class="labels">Profile Image</label>
                                <asp:FileUpload ID="fileUpload" runat="server" class="form-control" />
                                <asp:Image ID="profileImg" runat="server" src="" class="rounded-circle mt-3" width="150px" />
                            </div>

  />



                            <asp:Label ID="Editmessage" runat="server" Visible="false" CssClass="text-danger mt-3"></asp:Label>
                        </div>

                        <!-- Action Buttons -->
                        <div class="mt-4 text-center">
                            <asp:Button ID="update" runat="server" OnClick="update_Click" Text="Update Image" class="btn profile-button"/>
                            <asp:Button ID="cancel" runat="server" OnClick="cancel_Click" Text="Cancel" class="btn btn-secondary"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
