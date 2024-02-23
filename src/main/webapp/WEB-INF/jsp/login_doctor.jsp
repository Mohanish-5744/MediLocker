<%-- 
    Document   : login
    Created on : 14-Mar-2023, 11:57:34 pm
    Author     : HP
--%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MedData Maintenance</title>

    <link rel="icon" type="image/x-icon" href="/Favicon.png">

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Internal CSS -->
    <style>

        html{
            scroll-behavior: smooth;
        }

        /* Website Scoolbar */

        /* Width */
        ::-webkit-scrollbar {
            width: 5px;
        }
        
        /* Track */
        ::-webkit-scrollbar-track {
            background: #f1f1f1; 
        }
        
        /* Handle */
        ::-webkit-scrollbar-thumb {
            background: #96f453; 
        }
        
        /* Handle on hover */
        ::-webkit-scrollbar-thumb:hover {
            background: #d2a10b; 
        }
        
        .navbar{
            background: #96f453;
            padding: 0em;
            height: 4em;
        }

        .navbar a{
            color: #1a1919;
        }

        .navbar a:hover{
            color: #1a1919;
        }

        .navbar ul li a{
            font-size: 1em;
            font-weight: 600;
        }

        .navbar ul li a:hover {
           transform: scale(1.01);
           color: #1a1919;
           text-decoration: underline;
        }

        .login-box{
            margin-top: 28vh;
        }

        .form-box{
            background-color: #e7fce2;
            border: 1px solid black;
            border-radius: 5px;
            padding: 2em 2em;
        }

        .form-name, .form-username, .form-password{
            border: 1px solid #1a1919;
            border-radius: 2px;
            background-color: #e7fce2;
        }

        .dont-have-account{
            display: flex;
            justify-content: center;
        }

        body{
            background-color: #1e2124;
            height: 200em;
        }

    </style>
</head>
<body>

    <!-- Navbar -->

    <nav class="navbar fixed-top navbar-expand-lg" id="navbar"> 
        <a class="navbar-brand mb-0 h1 pl-1" href="#title" id="logo">
      <img src="https://i.postimg.cc/cCy47T9v/Logo.png" width="55" height="55" class="DocuMeds-logo d-inline-block align-content-center" alt="DocuMeds-logo">
          DocuMeds
        </a>

            <ul class="navbar-nav ml-auto px-4">
              <li class="nav-item active px-3">
                <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item px-3">
                  <a class="nav-link" href="about">About Us</a>
              </li>
              
              <li class="nav-item px-3">
                <a class="nav-link" href="#download">My Profile</a>
              </li>
            </ul>
          </div>
        </nav>
      <div class="container-fluid">
   
   <!-- Login Form -->
    <!--<div class="login-box container mt-5">-->
        <div class="login-box row d-flex justify-content-center">
            <div class="col-md-5">
                <div class="form-box card" id="form1">
                    <div class="form-data">
                        <form action="wlcmdoctor" method="post">
                        <h3>Enter Login Credentials</h3>
                        <br>
                        <div class="forms-inputs mb-4"><span>E-mail: </span>
                            <input class="form-username" autocomplete="off" type="email" placeholder="Enter E-mail" required="" name="email">
                        </div>

                        <div class="forms-inputs mb-4"><span>Password - </span>
                            <input class="form-password" type="password" placeholder="Password" required="" name="pass">
                            <div class="invalid-feedback">Password must be 8 character!</div>
                        </div>

                        <div class="dont-have-account">
                            Don't have account?
                            <a href="doctorregister">Register</a>
                        </div>
                        
                              <button class="login-button btn btn-success btn-lg rounded mt-5 mx-auto btn-block sticky" id="button1"><i class="bi bi-calendar-check"></i>&nbsp;Login</button>
                        </form>
                    </div>
            </div>
        </div>
    </div>

</body>
</html>
