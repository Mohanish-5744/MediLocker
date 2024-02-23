<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link rel="stylesheet" href="styles.css"> -->
    <style> 
        body {
        background-image: url("https://images.unsplash.com/photo-1603796846097-bee99e4a601f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80");
        min-height: 100%;
        min-width: 100%;

        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;

        }
        * {
	padding: 0;
	margin: 0;
  }

/*  // Developed by http://grohit.com/*/
  
  body 
  {
      padding-top: 5rem;
	display: flex;
	flex-direction: column;
	/*justify-content: center;*/
	align-items: center;
	position: relative;
	min-height: 100vh;
	font-family: Hack, monospace;
  }
  
  div {
	color: #727272;
	text-align: center;
  }
  


 
  /*// Developed by http://grohit.com/*/

  .topnav {
	background-color: #333333;
	overflow: hidden;
  }
  
  /* Style the links inside the navigation bar */
  .topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
  }
  
  /* Change the color of links on hover */
  .topnav a:hover {
	background-color: #ddd;
	color: black;
  }
  
  /* Add a color to the active/current link */
  .topnav a.active {
	background-color: #04AA6D;
	color: white;
  }

  .heading{
	text-align: center;
        font-size: 5rem;
        color:red;
        /*background-color: yellow;*/
  }
  .heading:hover{
      color:greenyellow;
  }

  
        </style>
</head>
<body >
    


<section>
  <nav>
    <div class="topnav">
        <a class="active" href="#home">Home</a>
        <form action="sign" method="get">
            <button>SignUp</button>           
        </form> 
        
        
        <a href="#contact">Contact</a>
        <a href="#about">About Us</a>
      </div>
  </nav>

</section>
         <div class="heading">
             <p><h1>Medi_Locker</h1></p>

    </div>


        
    
   
</body>
</html>