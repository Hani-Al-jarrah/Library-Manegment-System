<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rooms.aspx.cs" Inherits="Group5.Hani.Rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />

    

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">



   <style>
       
       
       
        nav .btn {
    font-family: 'Nunito', sans-serif;
    font-weight: 600;
    transition: .5s;
    color: white;
    background-color: #2C3E50;
    border: none;
    border-left: 20px;
}
.btn:hover{
    background-color: #F1C40F;
    color: black;
}

.btn-square {
    width: 38px;
    height: 38px;
}

.btn-sm-square {
    width: 32px;
    height: 32px;
}
small{
    color: #F1C40F;
}
.btn-lg-square {
    width: 48px;
    height: 48px;
}

.btn-square,
.btn-sm-square,
.btn-lg-square {
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    font-weight: normal;
    border-radius: 0px;
}
        .navbar .dropdown-toggle::after {
    border: none;
    content: "\f107";
    font-family: "Font Awesome 5 Free";
    font-weight: 900;
    vertical-align: middle;
    margin-left: 8px;
}

.navbar-light .navbar-nav .nav-link {
    margin-right: 30px;
    padding: 25px 0;
    color: #FFFFFF;
    font-size: 15px;
    text-transform: uppercase;
    outline: none;
}

.navbar-light .navbar-nav .nav-link:hover,
.navbar-light .navbar-nav .nav-link.active {
    color:#F1C40F;
}

@media (max-width: 991.98px) {
    .navbar-light .navbar-nav .nav-link  {
        margin-right: 0;
        padding: 10px 0;
    }

    .navbar-light .navbar-nav {
        border-top: 1px solid #EEEEEE;
    }
}

.navbar-light .navbar-brand,
.navbar-light a.btn {
    height: 75px;
}

.navbar-light .navbar-nav .nav-link {
    color: var(--dark);
    font-weight: 500;
}

.navbar-light.sticky-top {
    top: -100px;
    transition: .5s;
}

@media (min-width: 992px) {
    .navbar .nav-item .dropdown-menu {
        display: block;
        margin-top: 0;
        opacity: 0;
        visibility: hidden;
        transition: .5s;
    }

    .navbar .dropdown-menu.fade-down {
        top: 100%;
        transform: rotateX(-75deg);
        transform-origin: 0% 0%;
    }

    .navbar .nav-item:hover .dropdown-menu {
        top: 100%;
        transform: rotateX(0deg);
        visibility: visible;
        transition: .5s;
        opacity: 1;
    }
}
        body {
            background-color: #f8f9fa;
        }
        .card {
            border: none;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .card-img-top {
            height: 200px;
            object-fit: cover;
        }
        .card-title {
            font-weight: bold;
        }
        .time-picker-panel {
            display: none;
        }
        .time-picker-panel.open {
            display: block; 
        }
    </style>
</head>
<body>
      <!-- Navbar Start -->
   <nav class="navbar navbar-expand-lg  navbar-light shadow sticky-top p-0">
       <a href="index.html" class="navbar-brand d-flex align-items-center">
             <asp:Image ID="Image2" runat="server" ImageUrl="Images/Screenshot_2025-01-31_020111-removebg-preview.png" AlternateText="My Image" Width="300px" />
       </a>
       <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
           <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarCollapse">
           <div class="navbar-nav ms-auto p-4 p-lg-0">
               <a href="/Habib/Home.aspx" class="nav-item nav-link active">Home</a>
               <a href="aboutus.aspx" class="nav-item nav-link">About Us</a>
               <a href="/Hani/Rooms.aspx" class="nav-item nav-link">Rooms</a>
               <a href="/Mona/StudentsBooks.aspx" class="nav-item nav-link">Books</a>
               <a href="/Habib/Contact.aspx" class="nav-item nav-link">Contact Us</a>
               <a href="/Suhaib/Loginpage.aspx" class="nav-item nav-link">LogOut</a>
           </div>
           <a href="/Sajeda/Profile.aspx" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block"><i class="fa fa-user"></i></a>
       </div>
   </nav>
   <!-- Navbar End -->

    <form id="form1" runat="server">
        <div class="container my-4">
         
            <h2 class="text-center mb-4">Available Rooms</h2>
            <asp:Repeater ID="rptRooms" runat="server" OnItemDataBound="rptRooms_ItemDataBound">
                <ItemTemplate>
                    <div class="card mb-4">
                        <img src='<%# Eval("Image") %>' class="card-img-top" alt="Room Image" onerror="this.src='/Uploads/default-placeholder.png';" />
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name") %></h5>
                            <p class="card-text">Capacity: <%# Eval("Capacity") %></p>
                            <p class="card-text"><%# Eval("Description") %></p>

                            <asp:Label ID="lblStatus" runat="server" CssClass="badge bg-info"></asp:Label>

                            <asp:Button ID="btnReserve" runat="server" Text="Reserve" CssClass="btn btn-primary"
                                CommandArgument='<%# Eval("ID") %>'
                                Enabled='<%# Eval("Status").ToString() != "Pending" %>'
                                OnClientClick="toggleTimePicker(this); return false;" />

                            <asp:Button ID="btnCancel" runat="server" Text="Cancel Reservation" CssClass="btn btn-danger mt-2"
                                Visible='<%# Eval("Status").ToString() == "Reserved" || Eval("Status").ToString() == "Cancel Pending" %>'
                                Enabled='<%# Eval("Status").ToString() != "Cancel Pending" %>'
                                CommandArgument='<%# Eval("ID") %>'
                                OnClientClick="return confirmCancel();" OnClick="btnCancelReservation_Click" />

                            <asp:Panel ID="pnlTimePicker" runat="server" CssClass="mt-3 time-picker-panel">
                                <label for="calDatePicker">Select Date:</label>
                                <asp:Calendar ID="calDatePicker" runat="server"></asp:Calendar>
                                <label for="ddlStartTime">Select Start Time:</label>
                                <asp:DropDownList ID="ddlStartTime" runat="server" CssClass="form-select"></asp:DropDownList>
                                <asp:Button ID="btnConfirmReserve" runat="server" Text="Confirm Reservation" CssClass="btn btn-success mt-2"
                                    OnClick="btnConfirmReserve_Click" />
                            </asp:Panel>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>


 <!-- Footer Start -->

<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5" style="justify-content: space-between !important;">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3" style="margin-bottom:-2px !important">
                      <asp:Image ID="Image1" runat="server" ImageUrl="Images/Screenshot_2025-01-31_020111-removebg-preview.png" AlternateText="My Image" Width="224px" Height="77" />
                </h4>
                <div class="position-relative mx-auto" style="max-width: 400px;">
                    <p>The Library Management System** streamlines book borrowing, room reservations, and feedback management for students and administrators in a university library.</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Contact</h4>
                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-white mb-3">Quick Link</h4>
                <a class="btn btn-link" href="/Habib/Home.aspx">Home</a>
      <a class="btn btn-link" href="/Habib/Contact.aspx">Contact Us</a>
      <a class="btn btn-link" href="/Mona/StudentsBooks.aspx">Books</a>
      <a class="btn btn-link" href="/Hani/Rooms.aspx">Rooms</a>
      <a class="btn btn-link" href="aboutus.aspx">About Us</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0" style="    width: 100%;
text-align: center !important;">
                    &copy; <a class="border-bottom" href="#">Horizon</a>, All Right Reserved.</a>
                </div>
            </div>
        </div>
    </div>
</div>  

 <!-- Footer End -->




    <script>
        function toggleTimePicker(button) {
            var panel = button.nextElementSibling;
            panel.classList.toggle('open'); // Simpler toggle using classList
        }

        function confirmCancel() {
            return confirm("Are you sure you want to cancel this reservation? This will require admin approval.");
        }

        document.addEventListener("DOMContentLoaded", function () {
            var panels = document.querySelectorAll(".time-picker-panel");
            panels.forEach(function (panel) {
                panel.addEventListener("click", function (event) {
                    event.stopPropagation();
                });
            });


            var calendars = document.querySelectorAll(".time-picker-panel .calendar"); // Correct selector
            calendars.forEach(function (calendar) {
                calendar.addEventListener("change", function (event) {
                    event.stopPropagation();
                });
            });

        });
    </script>
</body>
</html>