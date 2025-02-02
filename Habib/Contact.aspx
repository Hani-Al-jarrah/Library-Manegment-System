<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Group5.Habib.Contact" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Us - Library Management System</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script type="text/javascript"
        src="https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js"

    </script>
    <script type="text/javascript">
        (function () {
            emailjs.init({
                publicKey: "ak8XwcvPwPsxFSSIU",
            });
        })();
    </script>
    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        .btn {
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


        body {
            min-height: 100vh;
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
/*            align-items: center;*/
            background-color: #2C3E50;
            /* Deep Blue */
            background-image: url(https://images.pexels.com/photos/159711/books-bookstore-book-reading-159711.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940);
            background-size: cover;
            background-position: center;
            position: relative;
        }
        /*** Navbar ***/
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



            body::after {
                content: "";
                position: absolute;
                top: 0;
                left: 0;
                height: 100%;
                width: 100%;
                background-color: rgba(44, 62, 80, 0.9);
                /* Deep Blue with opacity */
            }

        /* Navigation Bar */
        nav {
            width: 100%;
            background-color: rgba(44, 62, 80, 0.9);
            /* Deep Blue with opacity */
            padding: 15px 20px;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

            nav .logo {
                color: #F1C40F;
                /* Warm Gold */
                font-size: 1.8em;
                font-weight: 700;
                text-decoration: none;
            }

            nav ul {
                list-style: none;
                display: flex;
                gap: 20px;
            }

                nav ul li {
                    position: relative;
                }

                    nav ul li a {
                        color: #F4F1DE;
                        /* Light Beige */
                        text-decoration: none;
                        font-size: 1.1em;
                        transition: color 0.3s ease;
                    }

                        nav ul li a:hover {
                            color: #F1C40F;
                            /* Warm Gold */
                        }

                        nav ul li a::after {
                            content: "";
                            position: absolute;
                            bottom: -5px;
                            left: 0;
                            width: 0;
                            height: 2px;
                            background-color: #F1C40F;
                            /* Warm Gold */
                            transition: width 0.3s ease;
                        }

                        nav ul li a:hover::after {
                            width: 100%;
                        }

        /* Hamburger Menu for Mobile */
        .menu-toggle {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

            .menu-toggle span {
                height: 3px;
                width: 25px;
                background-color: #F4F1DE;
                /* Light Beige */
                margin: 4px 0;
                transition: 0.3s;
            }

        /* Section Styles */
        section {
            position: relative;
            z-index: 3;
            width: 100%;
            padding: 100px 20px 50px;
            /* Adjusted padding for navbar */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .section-header {
            margin-bottom: 50px;
            text-align: center;
        }

            .section-header h2 {
                color: #F1C40F;
                /* Warm Gold */
                font-weight: bold;
                font-size: 3em;
                margin-bottom: 20px;
                animation: fadeInDown 1s ease-out;
            }

            .section-header p {
                color: #F4F1DE;
                /* Light Beige */
                font-size: 1.2em;
                animation: fadeInUp 1s ease-out;
            }

        .row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-between;
            gap: 30px;
        }

        /* Contact Info Section */
        .contact-info {
            width: 40%;
        }

        .contact-info-item {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            animation: fadeInLeft 1s ease-out;
        }

        .contact-info-icon {
            height: 70px;
            width: 70px;
            background-color: #F1C40F;
            /* Warm Gold */
            text-align: center;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: transform 0.3s ease, background-color 0.3s ease;
        }

            .contact-info-icon i {
                font-size: 30px;
                color: #2C3E50;
                /* Deep Blue */
                transition: color 0.3s ease;
            }

            .contact-info-icon:hover {
                transform: scale(1.1);
                background-color: #27AE60;
                /* Soft Green */
            }

                .contact-info-icon:hover i {
                    color: #F4F1DE;
                    /* Light Beige */
                }

        .contact-info-content {
            margin-left: 20px;
        }

            .contact-info-content h4 {
                color: #F1C40F;
                /* Warm Gold */
                font-size: 1.4em;
                margin-bottom: 5px;
            }

            .contact-info-content p {
                color: #F4F1DE;
                /* Light Beige */
                font-size: 1em;
            }

        /* Contact Form Section */
        .contact-form {
            background-color: #F4F1DE;
            /* Light Beige */
            padding: 40px;
            width: 55%;
            border-radius: 10px;
            animation: fadeInRight 1s ease-out;
        }

            .contact-form h2 {
                font-weight: bold;
                font-size: 2.5em;
                margin-bottom: 20px;
                color: #2C3E50;
                /* Deep Blue */
            }

            .contact-form .input-box {
                position: relative;
                width: 100%;
                margin-top: 20px;
            }

                .contact-form .input-box input,
                .contact-form .input-box textarea {
                    width: 100%;
                    padding: 10px 0;
                    font-size: 16px;
                    margin: 10px 0;
                    border: none;
                    border-bottom: 2px solid #2C3E50;
                    /* Deep Blue */
                    outline: none;
                    resize: none;
                    background-color: transparent;
                }

                .contact-form .input-box span {
                    position: absolute;
                    left: 0;
                    padding: 10px 0;
                    font-size: 16px;
                    margin: 10px 0;
                    pointer-events: none;
                    transition: 0.5s;
                    color: #666;
                }

                .contact-form .input-box input:focus ~ span,
                .contact-form .input-box textarea:focus ~ span,
                .contact-form .input-box input:valid ~ span,
                .contact-form .input-box textarea:valid ~ span {
                    color: #27AE60;
                    /* Soft Green */
                    font-size: 14px;
                    transform: translateY(-20px);
                }

                .contact-form .input-box #btnSubmit {
                    width: 100%;
                    background: #2C3E50;
                    /* Deep Blue */
                    color: #F4F1DE;
                    /* Light Beige */
                    border: none;
                    cursor: pointer;
                    padding: 15px;
                    font-size: 18px;
                    border-radius: 5px;
                    transition: 0.5s;
                }

                    .contact-form .input-box #btnSubmit {
                        background: #F1C40F;
                        /* Warm Gold */
                        color: #2C3E50;
                        /* Deep Blue */
                    }

        /* Responsive Design */
        @media (max-width: 991px) {
            .menu-toggle {
                display: flex;
            }

            nav ul {
                display: none;
                flex-direction: column;
                background-color: rgba(44, 62, 80, 0.9);
                /* Deep Blue with opacity */
                position: absolute;
                top: 60px;
                right: 20px;
                width: 200px;
                border-radius: 5px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }

                nav ul.active {
                    display: flex;
                }

            .row {
                flex-direction: column;
            }

            .contact-info,
            .contact-form {
                width: 100%;
            }

            .contact-info {
                margin-bottom: 40px;
            }
        }

        /* Keyframes for Animations */
        @keyframes fadeInDown {
            0% {
                opacity: 0;
                transform: translateY(-20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInUp {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }

            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeInLeft {
            0% {
                opacity: 0;
                transform: translateX(-20px);
            }

            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }

        @keyframes fadeInRight {
            0% {
                opacity: 0;
                transform: translateX(20px);
            }

            100% {
                opacity: 1;
                transform: translateX(0);
            }
        }
        .footer .btn.btn-social {
    margin-right: 5px;
    width: 35px;
    height: 35px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--light);
    font-weight: normal;
    border: 1px solid #FFFFFF;
    border-radius: 35px;
    transition: .3s;
}

.footer .btn.btn-social:hover {
    color: var(--primary);
}

.footer .btn.btn-link {
    display: block;
    margin-bottom: 5px;
    padding: 0;
    text-align: left;
    color: #FFFFFF;
    font-size: 15px;
    font-weight: normal;
    text-transform: capitalize;
    transition: .3s;
}

.footer .btn.btn-link::before {
    position: relative;
    content: "\f105";
    font-family: "Font Awesome 5 Free";
    font-weight: 900;
    margin-right: 10px;
}

.footer .btn.btn-link:hover {
    letter-spacing: 1px;
    box-shadow: none;
}

.footer .copyright {
    padding: 25px 0;
    font-size: 15px;
    border-top: 1px solid rgba(256, 256, 256, .1);
}

.footer .copyright a {
    color: var(--light);
}

.footer .footer-menu a {
    margin-right: 15px;
    padding-right: 15px;
    border-right: 1px solid rgba(255, 255, 255, .1);
}

.footer .footer-menu a:last-child {
    margin-right: 0;
    padding-right: 0;
    border-right: none;
}
.footer{
    z-index:3000;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg  navbar-light shadow sticky-top p-0">
        <a href="index.html" class="navbar-brand d-flex align-items-center">
              <asp:Image ID="Image2" runat="server" ImageUrl="Images/Screenshot_2025-01-31_020111-removebg-preview.png" AlternateText="My Image" Width="300px" />
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link active">Home</a>
                <a href="about.html" class="nav-item nav-link">AboutUS</a>
                <a href="courses.html" class="nav-item nav-link">Rooms</a>
                <a href="courses.html" class="nav-item nav-link">Books</a>
                <a href="courses.html" class="nav-item nav-link">Contactus</a>
                <a href="courses.html" class="nav-item nav-link">LogOut</a>
            </div>
            <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block"><i class="fa fa-user"></i></a>
        </div>
    </nav>

        <!-- Contact Section -->
        <section>
            <div class="section-header">
                <div class="container">
                    <h2>Contact Us</h2>
                    <p>We're here to help! Reach out to us for any inquiries or support related to our Library Management System.</p>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="contact-info">
                        <div class="contact-info-item">
                            <div class="contact-info-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-info-content">
                                <h4>Address</h4>
                                <p>123 Library Lane,<br />
                                    Knowledge City,<br />
                                    45678</p>
                            </div>
                        </div>

                        <div class="contact-info-item">
                            <div class="contact-info-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="contact-info-content">
                                <h4>Phone</h4>
                                <p>+1 234 567 890</p>
                            </div>
                        </div>

                        <div class="contact-info-item">
                            <div class="contact-info-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-info-content">
                                <h4>Email</h4>
                                <p>support@librarymanagement.com</p>
                            </div>
                        </div>
                    </div>

                    <div class="contact-form">
                        <h2>Send Message</h2>
                         <form id="contactForm">
        <div class="input-box">
            <input type="text" id="txtFullName" name="fullName" required />
            <span>Full Name</span>
        </div>

        <div class="input-box">
            <input type="email" id="txtEmail" name="email" required />
            <span>Email</span>
        </div>

        <div class="input-box">
            <input type="text" id="txtSubject" name="subject" required />
            <span>Subject</span>
        </div>

        <div class="input-box">
            <textarea id="txtMessage" name="message" rows="5" required></textarea>
            <span>Type your Message...</span>
        </div>

        <div class="input-box">
            <button type="button" id="btnSubmit" onclick="sendEmail()">Send</button>
        </div>
    </form>
</div>

                    </div>
                </div>
            </div>
        </section>
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
                <a class="btn btn-link" href="">Home</a>
                <a class="btn btn-link" href="">Contact Us</a>
                <a class="btn btn-link" href="">Books</a>
                <a class="btn btn-link" href="">Rooms</a>
                <a class="btn btn-link" href="">About us</a>
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
    </form>
<script src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script>
    (function () {
        emailjs.init("YOUR_USER_ID"); 
    })();

    const menuToggle = document.querySelector('.menu-toggle');
    const navUl = document.querySelector('nav ul');

    menuToggle.addEventListener('click', () => {
        navUl.classList.toggle('active');
    });
    (function () {
        emailjs.init("ak8XwcvPwPsxFSSIU"); 
    })();
    function sendEmail() {
        // Hardcoded values for testing
        const parms = {
            name: "Test User",
            email: "test@example.com",
            subject: "Test Subject",
            message: "This is a test message.",
        };
        console.log("Form Data:", parms);
        const serviceid = "service_kwvtdxr";
        const templateid = "template_c3k59vb";
        emailjs.send(serviceid, templateid, parms)
            .then(function (response) {
                console.log("EmailJS Response:", response);
                if (response.status === 200) {
                    alert("Email sent successfully!");
                } else {
                    alert("Failed to send the email. Please try again.");
                }
            }, function (error) {
                console.error("EmailJS error:", error);
                alert("Failed to send the email. Please try again.");
            });
    }
</script>
</body>
</html>
