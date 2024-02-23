
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
            .flipcard{
                min-width: 80vw;
                min-height: 80vh;
                margin: auto;
            }
            .flipcard-inner{
                position: relative;
                height: 100%;
                width: 100%;
            }

            .front-face,.back-face{
                position: relative;
                width: 80%;
                height: 90vh;
                margin: auto;
                border: 2px solid black;
                background-color: #0C0032;
                opacity: 0.9;
            }
            .back-face{
                background-color: #0C0032;


            }
            label{
                display: block;
                width: auto;
                text-align: center;
                font-size: 2.6rem;
                margin: auto;
                color: rgb(217, 217, 79);
            }


            input{
                width: 70%;
                border-radius: 15px;
                height: 6vh;
                background-color: rgba(62, 64, 64, 0.592);
                border: 0;
                border-bottom: 2px solid rgb(239, 35, 35);
                color:antiquewhite;
                font-size: 1rem;
                text-indent: 2vw;
                text-decoration:solid;
            }
            input:hover{
                border-bottom: 2px solid #10E7DC;
            }
            input[type=date]{
                font-size: 1rem;
                text-indent: 1vw;
            }
            ::placeholder{
                color: rgb(198, 198, 189);
                font-size: 1rem;
            }
            .input-field1 , .input-field2  {
                width:80%;
                height: 100%;
                display: grid;
                grid-template-columns: 1fr 1fr;
                grid-gap:1vw;
                margin: auto;
                margin-top: 5vh;
                background-color: #0C0032;


            }
            .input-field1  ul , .input-field2  ul{
                width: 100%;
                align-items: center;
                justify-content: center;
                margin: auto;
            }
            .input-field1  ul li, .input-field2  ul li{
                list-style-type: none;
                margin-bottom: 5vh;
            }

            select{
                text-indent: 1rem;
                width: 40%;
                height: 4vh;
                background-color: rgba(62, 64, 64, 0.592);
                border-radius: 30px;
                font-size: 1rem;
                color: antiquewhite;
            }
            .mid-space{
                height: 10vh;
                /*background-color: #022140;*/
                width: 100vw;
            }
            #pas-field{
                display: flex;
                margin: auto;
            }
            .sbm-btn{
                display: grid;
                grid-template-columns: 1fr 1fr;
                width: 50%;
                height: 6vh;
                text-align: center;
                border-radius: 10px;
                font-size: 1.01rem;
                margin: auto;
            }
            .add span{
                display: block;
                color: whitesmoke;
                margin-bottom: .2vh;
            }
            .pas-1 {
                display: block;
                color: whitesmoke;
                margin-right: 1.5vw;
                margin-bottom: .2vh;

            }
            .sbm-btn input{
                background-image: linear-gradient(to right, rgb(236, 192, 58) 0%, rgb(249, 243, 59) 100%);
                font-size: 1.5rem;
                text-indent: 0;
                margin: auto;
                margin-top: 2vh;

                color:rgb(71, 3, 101);
                transition: all .3s ease-out;

            }
            .sbm-btn input:hover{
                transform: translate(4px,3px);
                /* background-image: linear-gradient(to right, rgb(236, 192, 58) 0%, rgb(249, 243, 59) 100%); */
                background-image: linear-gradient(to right,  #F9D423    0%, #FF4E50  100%);
            }


            #section-1 {
                height: 10vh;
                width: 10vw;
                background-color: #2df84802;
                font-size: 16px;

            }

            a#scroll-btn {
                position: absolute;
                top:75%;
                left: 68vw;
                height: 4em;
                width: 2em;
                border: 0.2px solid #7f07cf;
                bottom: 6em;
                border-radius: 3em;
                background-color: #43318d;
            }
            a#scroll-btn:hover{
                border: 0.8px solid #a02ded;
                background-color: #4d1fa9;

            }

            a#scroll-btn:before {
                position: absolute;
                content: "";
                margin: auto;
                left: .5vw;
                top: 1.2em;
                height: 1.2em;
                width: 1.2em;
                background-color: rgb(0, 255, 170);
                border-radius: 50%;
                animation: move-down 2s infinite;
            }
            @keyframes move-down {
                90% {
                    opacity: 0.5;
                }
                100% {
                    transform: translateY(8ex);
                    opacity: 0;
                }
            }
            a#scroll-btn:after {
                position: absolute;
                content:"SCROLL DOWN  ";
                width: 12em;
                display: block;
                width: 12em;
                text-align: center;
                left: -4.2em;
                bottom: -2.5em;
                font-size: 1.6em;
                color: #f0e541;
                letter-spacing: 3px;
                font-weight: 600;
            }

            .scroll-btn{
                height: 50px;
                width: 50px;
                background-color: aqua;
            }

            .heading-2{
                font-size: 1.1rem;
                font-family:Georgia, 'Times New Roman', Times, serif;
                margin-left: 2rem;
                color: rgb(215, 249, 249);
            }


            option{
                background-color: #370c61;
            }
            hr{
                width: 50%;
                margin: 0 auto;
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
                            <form action="home" method="get">
                                <a class="nav-link" href="home">Home <span class="sr-only">(current)</span></a>                  
                            </form>

                        </li>

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

            <div class="main-body">
                <!-- <label for="heading">Registration</label> -->

                <div class="flipcard">
                    <div class="flipcard-inner">

                        <form action="doctor" method="post">
                            <div class="front-face">
                                <div class="front">
                                    <label for="heading">Registration</label>

                                    <span class="heading-2">General</span>
                                    <div class="input-field1">
                                        <div class="ip1-ul1">

                                            <ul>
                                                <li> <input type="text" placeholder="Enter First Name" name="a" required>
                                                <li><input type="tel"  placeholder="Enter phone number" name="b" required>
                                                <li> <select name="c" required>
                                                        <option value="">Gender</option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                        <option value="Other">Other</option>
                                                    </select>
                                                <li> <div class="add"><span>Address</span><br>
                                                        <input type="text" placeholder="Address" name="d" required></div>
                                                    <!--                                            <li> <span>Id number</span><br><input type="text" placeholder="Id number" name="e">-->
                                            </ul></div>
                                        <div class="ip1-ul2">

                                            <ul>
                                                <li><input type="text" placeholder="Enter Last Name" name="e" required>
                                                <li><input type="email" placeholder="Enter your Email" name="f" required>
                                               
                                                <li><input type="password" placeholder="Enter Password" name="g" required>

                                            </ul></div>
                                        
                                         <div id="space-in-section"></div>
                                        
                                        <div class="sbm-btn">

                                <input type="submit" value="Register"> 
                                <input type="reset" value="Clear">
                            </div>
                                    </div>
                                    
                                </div>
                            </div>

                            

                        </form>
                    </div>
                </div>
            </div>

        </section>


    </body>
</html>