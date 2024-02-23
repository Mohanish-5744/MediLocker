

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
        height: 5em;
      }

      .navbar .navbar-logo {
        display: flex;
        align-items: bottom;
        justify-content: bottom;
        font-size: 2em;
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
      /* margin-right: -1em; */
     }

     h1 {
      color: white;
    }

    #homepage {
      margin-top: 10em;
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

    #text-1 {
      font-size: 6em;
      text-align: center;
      color: rgb(172, 255, 201);
      margin-top: -3em;
    }

    #text-2 {
      font-size: 9em;
      text-align: center;
      margin-top: -0.3em;
      color: rgb(240, 255, 246);
    }

    #p1 {
      margin-top: 1em;
      text-align: center;
      font-size: 1.3em;
      color: aliceblue;
      opacity: 50%;
    }

    #p2 {
      font-size: 1.8em;
      justify-content: center;
      text-align: center;
      padding-left: 5em;
      margin-top: 1em;
      padding-right: 5em;
      color: aliceblue;
      opacity: 50%;
      font-size: 20px;
    }

    #text-2.hover .p2{
      color: rgb(121, 233, 160);
    }

    p, a {
      color: white;
    }

    #copyright {
      margin-top: 2em;
      text-align: center;
      opacity: 30%;
    }

    .cpy {
      text-decoration: underline;
    }

    .cpy:hover {
      color: rgb(121, 233, 160);
      opacity: 100%;
      font-size: large;
    }

    #d1 {
      display: inline;
      transform: rotate(45deg);
      margin-left: 4em;
      margin-top: 1em;
    }

    #d2 {
      display: inline;
      transform: rotate(45deg);
      margin-left: 80em;
      margin-top: 1em;
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
            <a class="nav-link" href="#title">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item px-3">
            <a class="nav-link" href="upload_documents">Upload Docs</a>
          </li>
          <li class="nav-item px-3">
            <a class="nav-link" href="displayblob">View Documents</a>
          </li>
<!--          <li class="nav-item px-3">
            <a class="nav-link" href="#download">Update Docs</a>
          </li>-->
          
          <li class="nav-item px-3">
              <a class="nav-link" href="start">Logout</a>
          </li>
          <li class="nav-item px-3">
            <a href="#">
              <img src="https://i.ibb.co/Bt7Hkkm/Profile.png" alt="DocuMeds-profile" height="35" width="35" class="DocuMeds-profile">
            </a>
          </li>
        </ul>
      </div>
    </nav>
  </section>

  <section id="homepage">
    <img src="https://i.ibb.co/vBfQc1t/Logo.png" alt="DocuMeds-logo" height="150px" width="150px" id="d1">
    <img src="https://i.ibb.co/vBfQc1t/Logo.png" alt="DocuMeds-logo" height="150px" width="150px" id="d2">
    
    <h3 id="text-1">Welcome, to </h3>
    <h1 id="text-2">DocuMeds</h1>
    <h4>
      
      <p id="p1">Place where you can store all your medical data. </p>
    </h4>
    <p id="p2">In recent times, the storage and management of medical data have been a crucial aspect of healthcare services. <br> Patients' medical data contains sensitive and confidential information that must be kept securely for future reference and to ensure continuity of care. The digital age has enabled the creation of electronic medical records which can be used to store and manage medical data.</p>
  </section>

  <footer>
    <p id="copyright">&copy; <a href="#" class="cpy">2023 DocuMeds</a></p>
  </footer>


  <script>
    document.getElementById("p2").onmouseover = function() {myFunc1()}
    document.getElementById("p2").onmouseout = function() {myFunc2()}

    function myFunc1()
    {
      document.getElementById("p2").style.color = "rgb(121, 233, 160)";
    }

    function myFunc2()
    {
      document.getElementById("p2").style.color = "aliceblue";
    }
  </script>
</body>
</html>
</html>
