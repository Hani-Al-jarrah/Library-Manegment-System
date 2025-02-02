<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="LibraryProject.rooms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
        <style>
*, *::before, *::after {
  box-sizing: border-box;
}

body {
  background-color: #fff;
  min-height: 100vh;
/*  font-family: "Fira Sans", sans-serif;*/
}

.card {
  position: relative;
  margin: 15px;
  background: #fff;
  box-shadow: 0px 3px 10px rgba(34, 35, 58, 0.2);
  padding: 30px 25px 30px;
  border-radius: 25px;
  transition: all 0.3s;
}

/*@media screen and (max-width: 992px) {
  .card {
    height: auto;
  }
}

@media screen and (max-width: 768px) {
  .card {
    min-height: 500px;
    height: auto;
    margin: 120px auto;
  }
}*/

/*.card img {
  width: 100%;
  height: auto;
  object-fit: cover;
  border-radius: 20px;
  transition: all 0.3s;
}*/

.card-body {
  padding: 20px;
}

.card-body span {
  color: #7b7992;
  margin-bottom: 15px;
  display: block;
  font-weight: 500;
}

.card-title {
  font-size: 24px;
  font-weight: 700;
  color: #0d0925;
  margin-bottom: 20px;
}

.card-text {
  color: #4e4a67;
  margin-bottom: 30px;
  line-height: 1.5em;
}

.btn-custom {
  display: inline-flex;
  background-image: linear-gradient(147deg, #000 0%, #000 74%);
  padding: 15px 35px;
  border-radius: 50px;
  color: #fff;
  box-shadow: 0px 3px 10px rgba(252, 56, 56, 0.4);
  text-decoration: none;
  font-weight: 500;
  justify-content: center;
  text-align: center;
  letter-spacing: 1px;
}

.btn-custom:hover {
  color: #989898;
  text-decoration: none;
}

@media screen and (max-width: 576px) {
  .btn-custom {
    width: 100%;
  }
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>


          <div class="container">
            <div class="row mt-5">
             <div class="card shadow-sm">
              <div class="row g-0">
                <div class="col-md-8">
                  <div class="card-body">
                      
                        <div id="showrooms" runat="server"></div>

                  </div>
                </div>
              </div>
            </div>



           </div>
         </div>

           <div class="mt-5 text-center">
             <asp:Button ID="back" runat="server" OnClick="back_Click" Text="Back" class="btn btn-primary profile-button"/>
           </div>

        </div>
    </form>
</body>
</html>--%>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits="LibraryProject.rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Rooms</title>
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
        .card {
            margin: 15px;
            background: #fff;
            box-shadow: 0px 3px 10px rgba(34, 35, 58, 0.2);
            padding: 30px 25px 30px;
            border-radius: 25px;
            transition: all 0.3s;
        }
        .card-body {
            padding: 20px;
        }
        .card-body span {
            color: #7b7992;
            margin-bottom: 15px;
            display: block;
            font-weight: 500;
        }
        .card-title {
            font-size: 24px;
            font-weight: 700;
            color: #0d0925;
            margin-bottom: 20px;
        }
        .card-text {
            color: #4e4a67;
            margin-bottom: 30px;
            line-height: 1.5em;
        }
        .btn-custom {
            display: inline-flex;
            background-color: #2C3E50;
            color: white;
            padding: 15px 35px;
            border-radius: 50px;
            font-weight: 500;
            justify-content: center;
            text-align: center;
            transition: 0.3s;
        }
        .btn-custom:hover {
            background-color: #F1C40F;
            color: #2C3E50;
        }
        .btn-secondary {
            background-color: #F1C40F !important;
            color: #2C3E50 !important;
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
        <div class="container mt-5">
            <div class="row">
                <!-- Card displaying rooms -->
                <div class="card shadow-sm">
                    <div class="row g-0">
                        <div class="col-md-12">
                            <div class="card-body">
                                <h4 class="card-title text-center text-dark">Available Rooms</h4>
                                <div id="showrooms" runat="server">
                                    <!-- Room details will be populated here -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!-- Back Button Section -->
            <div class="mt-5 text-center">
                <asp:Button ID="back" runat="server" OnClick="back_Click" Text="Back" class="btn profile-button"/>
            </div>

        </div>
    </form>
</body>
</html>--%>



<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rooms.aspx.cs" Inherits=" Group5.rooms" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Rooms</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <style>
        body {
            background-color: #fff;
            color: #333;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        
        .container {
            background-color: #F4F1DE;
            border-radius: 15px;
            padding: 40px;
            margin-top: 50px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
        }

        .section-title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            color: #F1C40F;
            margin-bottom: 40px;
        }

        .card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 3px 15px rgba(34, 35, 58, 0.2);
            padding: 20px;
            margin-bottom: 30px;
            transition: all 0.3s ease;
        }

        .card:hover {
            box-shadow: 0px 5px 20px rgba(34, 35, 58, 0.3);
        }

        .card-body {
            padding: 20px;
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            color: #0d0925;
            margin-bottom: 15px;
        }

        .card-text {
            color: #4e4a67;
            line-height: 1.5em;
            margin-bottom: 20px;
        }

        .btn-custom {
            display: inline-flex;
            background-color: #2C3E50;
            color: white;
            padding: 12px 28px;
            border-radius: 50px;
            font-weight: bold;
            justify-content: center;
            text-align: center;
            transition: 0.3s ease-in-out;
        }

        .btn-custom:hover {
            background-color: #F1C40F;
            color: #2C3E50;
        }

        .profile-button {
            background-color: #2C3E50;
            color: white;
            border: none;
            padding: 12px 28px;
            border-radius: 50px;
            transition: 0.3s ease-in-out;
        }

        .profile-button:hover {
            background-color: #F1C40F;
            color: #2C3E50;
        }

        @media (max-width: 768px) {
            .card-body {
                padding: 15px;
            }

            .btn-custom, .profile-button {
                width: 100%;
            }

            .container {
                padding: 30px;
            }
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="section-title">Available Rooms</h2>

            <div class="row">
             <!-- Room Card Example -->
               <div class="col-md-12 col-lg-4" id="showrooms" runat="server" >
                    <div class="card">
                        <div class="card-body" >
                            <h4 class="card-title"></h4>
                            <p class="card-text"></p>
                        </div>
                    </div>
                </div>
               <%-- <div id="showrooms" runat="server">

                </div>--%>

                </div>
            <!-- Back Button Section -->
            <div class="mt-5 text-center">
                <asp:Button ID="back" runat="server" OnClick="back_Click" Text="Back" class="btn profile-button"/>
            </div>


        </div>
    </form>
</body>
</html>
