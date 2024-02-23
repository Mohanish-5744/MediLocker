
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="https://i.ibb.co/4SDhX2Q/Favicon.png" type="image/x-icon">
    <title>DocuMeds</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css" integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
    
    <!-- External CSS -->
    <style>

      /* Google Fonts */
      @import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Ubuntu&display=swap');
      @import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New&display=swap');

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
          background: #7de235; 
      }

      body {
        background-color: #2a2d32;
        /* background-color: #F6F6F6; */
      }

      .navbar {
        background-color: #69d71a;
      }

      .navbar .navbar-logo {
        display: flex;
        align-items: bottom;
        justify-content: bottom;
        font-size: 1.5em;
        font-weight: bolder;
        font-family: 'Zen Kaku Gothic New', sans-serif;
        color: #121315;
      }

      .navbar .navbar-logo:hover {
        cursor: pointer;
      }

      .navbar .DocuMeds-logo {
        transition-property: all;
        transition-timing-function: ease-in-out;
        transition-duration: 0.4s;
        filter: saturate(1);
      }

      .navbar .DocuMeds-logo:hover {
        transform: scale(1) rotate(90deg);
        cursor: pointer;
      }

     .navbar-light .navbar-nav .nav-link, .navbar-light .navbar-nav .nav-link.active {
        font-size: 1.05em;
        color: #121315;
        font-weight: 600;
        opacity: 90%;
     }
     
     .navbar-light .navbar-nav .nav-link:hover {
        opacity: 100%;
        text-decoration: underline;
     }

     .DocuMeds-profile {
      margin-left: 1em;
      margin-right: -1em;
     }

     h1 {
      color: white;
    }

    #homepage {
      margin-top: 6em;
    }

    #quote h1 {
      color: white;
      font-size: 6em;
      margin-left: 1em;
      display: flex;
      word-wrap: break-word;
      line-height: 85px;
      letter-spacing: -2px;
    }

    .buttons {
      margin-left: 5.5em;
    }

    .login-button {
      background-color: #69d71a;
      color: #2a2d32;
    }

    .register-button {
      border:1px #69d71a solid;
      color: #69d71a;
    }

    .login-button:hover {
      background-color: #57cc04;
      color: #2a2d32;
    }

    .register-button:hover {
      border:1px #69d71a solid;
      background-color: #69d71a;
      color: #2a2d32;
    }

    #g-3 {
      margin-top: 2em;
      filter: saturate(2);
    }

    #g-3-img {
      height: 33em;
      width: 45em;
    }
    </style>

</head>
<body>
    <section id="title">

    <!-- Nav Bar -->

    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
      <img src="https://i.postimg.cc/cCy47T9v/Logo.png" width="55" height="55" class="DocuMeds-logo d-inline-block align-content-center" alt="DocuMeds-logo">
      <a class="navbar-logo navbar-brand mb-1 h1 pl-1" href="#title" id="logo">
        DocuMeds
      </a>
      
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto px-lg-4">
          
          <li class="nav-item px-3">
              <a class="nav-link" href="about">About Us</a>
          </li>
          <li class="nav-item px-3">
            <a href="#">
              <img src="https://i.ibb.co/Bt7Hkkm/Profile.png" alt="DocuMeds-profile" height="40" width="40" class="DocuMeds-profile">
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </section>

  <!-- Homepage -->
  
  <section id="homepage">
    
    <div class="row">
      <div id="quote" class=" mt-lg-5">
        <h1>
          Place where you <br> can store all <br> your medical <br> data. 
        </h1>
        
        <div class="buttons col-lg-6 col-md-12 mt-lg-5 ">
              <form action="loginpage" method="get">
                 <button class="login-button btn btn-success btn-lg rounded mt-5 mx-auto btn-block sticky" id="button1"><i class="bi bi-calendar-check"></i>&nbsp;Login Patient</button>                
              </form> 
            <a href="logindoctor"><button class="login-button btn btn-success btn-lg rounded mt-5 mx-auto btn-block sticky" id="button1"><i class="bi bi-calendar-check"></i>&nbsp;Login Doctor</button></a>
          
          <form action="sign" method="get">
              <button class="register-button btn btn-lg rounded mt-2 mx-0 btn-block" id="button2"><i class="bi bi-person-square"></i>&nbsp;Register Patient</button>              
          </form>
          
          <a href="doctorregister"><button class="register-button btn btn-lg rounded mt-2 mx-0 btn-block" id="button2"><i class="bi bi-person-square"></i>&nbsp;Register Doctor</button></a>
                  
        </div>
      </div>
        
        <div id="g-3">
          <img src="https://i.ibb.co/0hrw786/Graphics-3.png" alt="Graphics" id="g-3-img">
        </div>
      </div>
        
  </section>
      
      
</body>
</html>