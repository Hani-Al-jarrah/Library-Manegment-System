<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="Group5.Books" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>

    <style>
*, *::before, *::after {
  box-sizing: border-box;
}

body {
  background-color: #fff;
  min-height: 100vh;
  font-family: "Fira Sans", sans-serif;
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

@media screen and (max-width: 992px) {
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
}

.card img {
  width: 100%;
  height: auto;
  object-fit: cover;
  border-radius: 20px;
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
                          
                            <div id="showbooks" runat="server"></div>

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
</html>
