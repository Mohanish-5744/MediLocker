<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Medilocker</title>
        <style>
            .bak{
                background-image: url('https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80');
                height:100%;
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
            .btn{
                padding:5rem;
                font-size: 10rem;
                background-color: grey;
            }
        </style>
    </head>

    <body>
<!--        <video autoplay muted loop id="myVideo">
            <source src="https://dsqqu7oxq6o1v.cloudfront.net/preview-592876-e6rSmsuCPr-high.mp4" type="video/mp4">
        </video>-->
<div class="bak">
    
    <div class="btn">
            <form action="start" method="get">
            <button>Click here to start website</button>            
        </form>            
        </div>
        
        <div class="btn">
            <form action="register" method="get">
            <button>Click here to do registration</button>            
        </form>         
        </div>
        
        <div class="btn">
            <form action="tp" method="get">
            <button>Click here to see tp Start Page</button>            
        </form>         
        </div>
    
</div>
                
        
               
    </body>
</html>
