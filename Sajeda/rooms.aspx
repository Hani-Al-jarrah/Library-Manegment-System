<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="Group5.rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rooms Information</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
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
            margin-top: 50px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }
        table {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
        }
        thead {
            background-color: #2C3E50;
            color: white;
        }
        tbody tr:hover {
            background-color: #f1c40f;
            color: #2C3E50;
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
    </style>
</head>
<body>



    <form id="form1" runat="server">
        <div>
        <div class="container">
            <h2 class="text-center text-dark">Available Rooms</h2>
            
            <table class="table table-striped mt-4">
                <thead>
                    <tr>
                        <th scope="col">Room ID</th>
                        <th scope="col">Room Name</th>
                        <th scope="col">Capacity</th>
                        <th scope="col">Location</th>
                    </tr>
                </thead>
                <tbody id="roomsHistory" runat="server">
                    <!-- Room details will be dynamically inserted here -->
                </tbody>
            </table>

            <div class="text-center mt-4">
                <asp:Button ID="back" runat="server" OnClick="back_Click" Text="Back" class="btn profile-button"/>
            </div>
        </div>

            </div>
    </form>
</body>
</html>









