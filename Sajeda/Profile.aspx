<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Group5.Profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css"/>
    <title></title>
    <style>
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
        <div>
        <section class="vh-100" style="background-color: #eee;" >
            <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col-lg-12 col-xl-11">
                <div class="card text-black" style="border-radius: 25px;">
                  <div class="card-body p-md-5">
                    <div class="row justify-content-center">
                      <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">


                          <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                            <div class = "data-mdb-input-init form-outline flex-fill mb-0">
                                <h6><label class="form-label" for="form3Example3c">Student No.</label></h6>
                                <asp:Label ID="studentNo" runat="server" Text=""></asp:Label>
                            </div>
                          </div>


                          <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                            <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                 <h6><label class="form-label" for="form3Example3c">Name</label></h6>
                                <asp:Label ID="Name" runat="server" Text=""></asp:Label>
                            </div>
                          </div>

                          <div class="d-flex flex-row align-items-center mb-4">
                            <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                            <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                     <h6><label class="form-label" for="form3Example3c">Email</label></h6>
                                    <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                            </div>
                          </div>

                         <div class="d-flex flex-row align-items-center mb-4">
                           <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                           <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                    <h6><label class="form-label" for="form3Example3c">Facutly</label></h6>
                                   <asp:Label ID="Facutly" runat="server" Text=""></asp:Label>
                           </div>
                         </div>

                          <div class="d-flex flex-row align-items-center mb-4">
                           <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                           <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                   <h6><label class="form-label" for="form3Example3c">Department</label></h6>
                                  <asp:Label ID="department" runat="server" Text=""></asp:Label>
                            </div>
                          </div>


                          <div class="d-flex flex-row align-items-center mb-4">
                           <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                           <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                   <h6><label class="form-label" for="form3Example3c">Mobile Number</label></h6>
                                  <asp:Label ID="phone" runat="server" Text=""></asp:Label>
                            </div>
                          </div>

                          
                          <div class="d-flex flex-row align-items-center mb-4">
                           <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                           <div class=" data-mdb-input-init form-outline flex-fill mb-0">
                                   <h6><label class="form-label" for="form3Example3c">Gender</label></h6>
                                  <asp:Label ID="Gender" runat="server" Text=""></asp:Label>
                            </div>
                          </div>

                          
                          <div class="mt-5 text-center">
                            <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit your Information" class="btn btn-primary profile-button"/>
                          </div>



        </div>
       </div>
  </div>
</div>
       </div>
  </div>
                </div>
                </section>
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









</body>
</html>

<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="LibraryProject.Profile" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"/>
    <title>Profile</title>
    <style>
        body {
            background-color: #f8f9fa;
        }
        .profile-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        }
        .profile-label {
            font-weight: bold;
            color: #2C3E50;
        }
        .btn-custom {
            background-color: #2C3E50;
            color: white;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #F1C40F;
            color: black;
        }
        .footer {
            background-color: #2C3E50;
            color: white;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow">
        <div class="container">
            <a class="navbar-brand" href="index.html">
                <asp:Image ID="Image2" runat="server" ImageUrl="Images/logo.png" Width="180px" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="index.html">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.html">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="rooms.html">Rooms</a></li>
                    <li class="nav-item"><a class="nav-link" href="books.html">Books</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                    <li class="nav-item"><a class="nav-link text-danger" href="logout.html">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

    <form id="form1" runat="server">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 profile-container">
                    <h3 class="text-center mb-4">User Profile</h3>
                    
                    <div class="mb-3">
                        <label class="profile-label">Student No:</label>
                        <asp:Label ID="studentNo" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-3">
                        <label class="profile-label">Name:</label>
                        <asp:Label ID="Name" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-3">
                        <label class="profile-label">Email:</label>
                        <asp:Label ID="Email" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-3">
                        <label class="profile-label">Faculty:</label>
                        <asp:Label ID="Facutly" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-3">
                        <label class="profile-label">Department:</label>
                        <asp:Label ID="department" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-3">
                        <label class="profile-label">Mobile Number:</label>
                        <asp:Label ID="phone" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="mb-4">
                        <label class="profile-label">Gender:</label>
                        <asp:Label ID="Gender" runat="server" CssClass="form-control border-0 bg-light" />
                    </div>
                    
                    <div class="text-center">
                        <asp:Button ID="edit" runat="server" OnClick="edit_Click" Text="Edit Information" CssClass="btn btn-custom" />
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Footer Start -->
    <div class="footer mt-5">
        <p>&copy; 2025 Horizon Library. All Rights Reserved.</p>
    </div>
    <!-- Footer End -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>--%>
