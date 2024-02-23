<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Upload Document</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="shortcut icon" href="https://i.ibb.co/ySDd7MM/Favicon.png" type="image/x-icon">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Ubuntu&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New&display=swap');

            body {
                background-color: #2a2d32;
            }

            .container {
                margin-top: 3em;
                /*text-align: center;*/
                color:red;
                font-size: 1.5em;
            }

            h1 {
                color: #7de235;
                font-family: 'Zen Kaku Gothic New', sans-serif;
                font-size: 3.5em;
                font-weight: bolder;
            }

            .p1 {
                margin-top: 1em;
                font-size: 1.2em;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                color: aliceblue;
                opacity: 60%;
            }

            input {
                color: black;
                font-size: 1.3rem;
            }
            #uploadfile {
                margin-top: 1em;
                display: hidden;
                color: aliceblue;
                opacity: 70%;
                font-size: 1.2em;
                margin-left: 5em;
            }

            .btn {
                margin-top:2em;
                padding: 1em 3em;
                font-size: 1.3rem;
                font-weight: 600;
                background-color: #7de235;
                border-radius: 15px;
                border: 1px solid #2a2d32;
                color: #2a2d32;
                transition-property: all;
                transition-duration: 0.2s;
                transition-timing-function: ease-in-out;
            }

            .btn:hover {
                transform: scale(1.03);
                background-color: #6bd81d;
            }

            #copyright {
                margin-top: 5em;
                text-align: center;
                opacity: 50%;
                color: aliceblue;
            }

            .cpy {
                text-decoration: underline;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                opacity: 50%;
                color: aliceblue;
            }

            .cpy:hover {
                color: rgb(121, 233, 160);
                opacity: 100%;
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

            h2 {
                padding: 10px;
                text-align: center;
                font-size: 2em;
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
                            <form action="wlcm" method="post">
                                <input type="hidden" name="adhar" value="${Useradhar}">
                                <input type="hidden" name="patientname" value="${UserName}">
                                <input type="hidden" name="email" value="${Useremail}">
                                <input type="hidden" name="pass" value="${Userpass}">
                                <button>Home</button>
                            </form>
                        </li>
                        <li class="nav-item px-3">
                            <a class="nav-link" href="start">Logout</a>
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
        <div class="container">
            <div class="row">
                <div class="col">

                    <table id="myTable" lign="center" border="10" border width="100" style="width:100%" class="table table-hover table-dark">
                        <h2>Uploaded Documents</h2>
                        <form action="deletesucc" method="post" >

                            Enter your Id of Document you want to delete :

                            <input type="number" placeholder="Enter Id" name="a" required>

                            <input type="submit" value="Delete the file">  

                        </form>
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Name of Document</th>
                                <th>ID</th>
                                <th>Document</th>

                            </tr>
                        </thead>
                        <tbody>
                            <%
                                int colind = 0;
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");

                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/minor", "root", "Monu@2003");

                                    PreparedStatement stmt = con.prepareStatement("select * from images");
                                    ResultSet rs = stmt.executeQuery();

                                    while (rs.next()) {

                                        Blob imageBlob = rs.getBlob("document");
                                        InputStream imageStream = imageBlob.getBinaryStream();
                                        ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                                        byte[] buffer = new byte[4096];
                                        int n = 0;
                                        while (-1 != (n = imageStream.read(buffer))) {
                                            outputStream.write(buffer, 0, n);
                                        }
                                        byte[] imageBytes = outputStream.toByteArray();
                            %>
                            <tr>
                                <td><%=rs.getString(1)%></td>
                                <td><%=rs.getString(2)%></td>
                                <td><%=rs.getString(3)%></td>
                                <td class="item-td">
                                    <div class="card item-card" align="center" style="width: 14rem;">
                                        <img class="card-img-top" alt="..." style="object-fit: cover;width: 100%;height: 100%;" src="data:image/jpeg;base64,<%= Base64.getEncoder().encodeToString(imageBytes)%>"/>
                                    </div>
                                </td>
                                <%colind++;%>
                                <% if (colind % 4 == 0) {
                                %></tr>
                                <%}%>
                                <%
                                        }
                                    } catch (Exception k) {
                                        System.out.println(k.getMessage());
                                    }
                                %>
                        </tbody>
                    </table>
                </div>
            </div>   
        </div>
        <footer>
            <p id="copyright">&copy; <a href="#" class="cpy">2023 DocuMeds</a></p>
        </footer>

    </body>
</html>