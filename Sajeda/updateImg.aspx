<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateImg.aspx.cs" Inherits="Group5.updateImg" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <title>Update Profile Image</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    
    <style>
        body {
            background-color: #2C3E50;
            color: white;
            font-family: Arial, sans-serif;
        }
        .container {
            background-color: #F4F1DE;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            width: 40%;
            margin-top: 50px;
        }
        .profile-section {
            text-align: center;
        }
        .profile-section img {
            border: 3px solid #F1C40F;
        }
        h2 {
            color: #F1C40F;
            font-weight: bold;
        }
        label {
            color: #2C3E50;
            font-weight: bold;
        }
        .btn {
            padding: 10px 15px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            font-size: 16px;
            margin: 10px;
            transition: 0.3s ease-in-out;
        }
        .btn-upload {
            background-color: #2C3E50;
            color: white;
        }
        .btn-upload:hover {
            background-color: #F1C40F;
            color: #2C3E50;
        }
        .btn-cancel {
            background-color: #F1C40F !important;
            color: #2C3E50 !important;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Update Profile Image</h2>

            <!-- Profile Image -->
            <div class="profile-section">
                <asp:Image ID="imgProfile" runat="server" CssClass="rounded-circle mt-3" Width="100" Height="100" 
                    ImageUrl="/img/default.png" alt="Profile Image" />
            </div>

            <br />

            <!-- File Upload -->
            <label for="fileUpload" class="form-label">Choose Profile Image</label>
            <asp:FileUpload ID="fileUpload" runat="server" CssClass="form-control" />

            <br />

            <!-- Upload Button -->
            <div class="text-center">
                <asp:Button ID="editimg" runat="server" Text="Upload Image" CssClass="btn btn-upload" 
                    OnClick="Editimg_Click" />

                <!-- Cancel Button -->
                <asp:Button ID="cancel" runat="server" Text="Cancel" CssClass="btn btn-cancel"
                    OnClick="cancel_Click" />
            </div>

            <br />

            <!-- Success/Error Message -->
            <asp:Label ID="Editmessage" runat="server" ForeColor="Red" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
