<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminBooks.aspx.cs" Inherits="Group5.Mona.AdminBooks" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Book Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        body {
            background-color: #2C3E50;
            color: #F4F1DE;
/*            font-family: Garamond;*/
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
                color: #F1C40F;
            }

        @media (max-width: 991.98px) {
            .navbar-light .navbar-nav .nav-link {
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

        .btn:hover {
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

        small {
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
        /* Footer Styling */
        .footer {
            background-color: #2C3E50 !important; /* Same as navbar */
            color: #F4F1DE;
            padding: 4px 0;
            font-size: 14px;
        }

            .footer h4 {
                color: #F1C40F;
            }

            .footer a {
                color: #FFFFFF;
                font-size: 14px;
                text-decoration: none;
                transition: color 0.3s ease-in-out;
            }

                .footer a:hover {
                    color: #F1C40F !important;
                }

            .footer .btn-social {
                color: #F4F1DE;
                border: 1px solid #F4F1DE;
                margin-right: 8px;
                width: 40px;
                height: 40px;
                display: inline-flex;
                align-items: center;
                justify-content: center;
                border-radius: 50%;
                transition: 0.3s;
            }

                .footer .btn-social:hover {
                    background-color: #F1C40F;
                    color: #2C3E50;
                }

            .footer .copyright {
                border-top: 1px solid #F1C40F;
                padding-top: 2px;
                text-align: center;
            }

        .pf {
            font-size: 0.9rem;
            margin-left: 5vw;
        }

        .copyright a {
            color: #F1C40F;
            text-decoration: none;
        }

        #Image1 {
            Width: 11vw;
            Height: 5vw;
        }

        .foot {
            box-shadow: 0.4vw 0.4vw 0.9vw black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg  navbar-light shadow sticky-top p-0">
            <a href="index.html" class="navbar-brand d-flex align-items-center">
                <asp:Image ID="Image2" runat="server" ImageUrl="img/logo1.png" AlternateText="My Image" Width="300px" />
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="index.html" class="nav-item nav-link active">Home</a>
                    <a href="about.html" class="nav-item nav-link">About</a>
                    <a href="courses.html" class="nav-item nav-link">Rooms</a>
                    <a href="courses.html" class="nav-item nav-link">Books</a>
                    <a href="courses.html" class="nav-item nav-link">Contact</a>
                    <a href="courses.html" class="nav-item nav-link">LogOut</a>
                </div>
                <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block"><i class="fa fa-user"></i></a>
            </div>
        </nav>
        <!-- Navbar End -->
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

                <h3 class="mt-4 d-flex justify-content-between">Book List
   
                    <asp:LinkButton ID="btnDownloadBooksPDF" runat="server" CssClass="btn btn-outline-light btn-sm"
                        OnClick="btnDownloadBooksPDF_Click" ToolTip="Download as PDF">
        <i class="fa fa-download"></i>
    </asp:LinkButton>
                </h3>

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
                                <asp:Button ID="btnEdit" runat="server" Text="Edit" CssClass="btn btn-warning btn-sm"
                                    CommandArgument='<%# Eval("BookID") %>' OnClick="btnEdit_Click"
                                    CausesValidation="false" UseSubmitBehavior="false" />

                                <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm"
                                    CommandArgument='<%# Eval("BookID") %>' OnClick="btnDelete_Click"
                                    CausesValidation="false" UseSubmitBehavior="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <h3 class="mt-4 d-flex justify-content-between">Borrow Requests
   
                    <asp:LinkButton ID="btnDownloadRequestsPDF" runat="server" CssClass="btn btn-outline-light btn-sm"
                        OnClick="btnDownloadRequestsPDF_Click" ToolTip="Download as PDF">
        <i class="fa fa-download"></i>
    </asp:LinkButton>
                </h3>
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
                                    Visible='<%# Eval("ShowActionButtons") %>' CausesValidation="false" UseSubmitBehavior="false" />

                                <asp:Button ID="btnReject" runat="server" Text="Reject" CssClass="btn btn-danger btn-sm"
                                    CommandArgument='<%# Eval("BookID") %>' OnClick="btnReject_Click"
                                    Visible='<%# Eval("ShowActionButtons") %>' CausesValidation="false" UseSubmitBehavior="false" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>



            </div>
        </div>
        <!-- Footer Start -->
        <div class="foot container-fluid footer text-light pt-5 mt-5">
            <div class="container py-1">
                <div class="row g-5 justify-content-between">
                    <div class="col-lg-3 col-md-6">
                        <h4 class="mb-3">
                            <asp:Image ID="Image1" runat="server" ImageUrl="Img/logo11.png" AlternateText="My Image" />
                        </h4>
                        <p>The Library Management System streamlines book borrowing, room reservations, and feedback management for students and administrators in a university library.</p>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4>Contact</h4>
                        <p><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4>Quick Links</h4>
                        <a class="btn btn-link" href="">Home</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Books</a>
                        <a class="btn btn-link" href="">Rooms</a>
                        <a class="btn btn-link" href="">About Us</a>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <p>&copy; 2025 Horizon Library. All rights reserved. <a class="pfa" href="policy.aspx">Privacy Policy</a> | <a class="pfa" href="terms.aspx">Terms of Service</a></p>
                </div>
            </div>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/js/all.min.js"></script>
    </form>
</body>
</html>

