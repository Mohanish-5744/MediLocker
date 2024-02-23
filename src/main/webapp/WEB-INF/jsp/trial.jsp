<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Login or Register</title>		
        <style>
            *{
                font-family: 'Poppies',sans-serif;
            }
            body{
                width: 100vw;
                height: 100vh;
                align-items: center;
                justify-content: center;
                /*background-color: #022140;*/

            }
            .main-body{
                display: block;
                width: 90vw;
                height: 90vh;
                margin: auto;
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
            body video{
                position: absolute;
                right: 0;
                bottom: 0;
                video:cover;
            }
            #myVideo {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 100%;
                min-height: 100%;
            }
        </style>
    </head>
    <body>
        <video autoplay muted loop id="myVideo">
            <source src="https://dsqqu7oxq6o1v.cloudfront.net/preview-592876-e6rSmsuCPr-high.mp4" type="video/mp4">
        </video>
        <div class="main-body">
            <!-- <label for="heading">Registration</label> -->

            <div class="flipcard">
                <div class="flipcard-inner">

                    <form action="user" method="post">
                        <div class="front-face">
                            <div class="front">
                                <label for="heading">Registration</label>

                                <span class="heading-2">General</span>
                                <div class="input-field1">
                                    <div class="ip1-ul1">

                                        <ul>
                                            <li> <input type="text" placeholder="Enter First Name" name="a" >
                                            <li><input type="tel"  placeholder="Enter phone number" name="m">
                                            <li> <select name="l">
                                                    <option value="">Gender</option>
                                                    <option value="Male">Male</option>
                                                    <option value="Female">Female</option>
                                                    <option value="Other">Other</option>
                                                </select>
                                            <li> <div class="add"><span>Address</span><br>
                                                    <input type="text" placeholder="Address" name="c"></div>
                                            <li> <span>Id number</span><br><input type="text" placeholder="Id number" name="e">
                                        </ul></div>
                                    <div class="ip1-ul2">

                                        <ul>
                                            <li><input type="text" placeholder="Cina" name="b">
                                            <li><input type="email" placeholder="john@123" name="n">
                                            <li><input type="date" name="g">
                                            <li><input type="text" placeholder="Pin code" name="p">

                                        </ul></div>
                                </div>
                                <section id="section-1"><a id="scroll-btn" href="#section-2"></a></section>
                                <div id="space-in-section"></div>
                            </div>
                        </div>


                        <div class="mid-space">  
                        </div>

                        <div class="back-face">
                            <div class="back">
                                <label for="heading">Registration</label>
                                <section id="section-2"></section>

                                <span class="heading-2">Medical</span>
                                <div class="input-field2">
                                    <div class="ip2-ul1">
                                        <ul>
                                            <li> <input type="text" placeholder="Height" name="i">
                                            <li><input type="tel"  placeholder="Age" name="f">
                                            <li><input type="text" placeholder="Medical History (if any)" name="k">
                                            <li><div class="pas" id="pas-field"> <span class="pas-1">Password </span>
                                                    <input type="password" placeholder="***" name="d"></div>
                                        </ul></div>

                                    <div class="ip2-ul2">
                                        <ul>
                                            <li><input type="text" placeholder="Weight" name="h">
                                            <li><input type="text" placeholder="Adhar card number" name="j">

                                        </ul></div>
                                </div><hr>
                            </div> 
                            <div class="sbm-btn">
                                <input type="submit" value="Register"> 
                                <input type="reset" value="Clear">
                            </div>
                        </div>


                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
