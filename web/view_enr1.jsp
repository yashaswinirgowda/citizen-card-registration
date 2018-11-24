<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registration</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="css/bootstrap/css/bootstrap.min.css">
        <script src="css/bootstrap/js/bootstrap.min.js"></script>
        <style>
            body{
                background-color: #f8f9fa;
            }
            form{
                width: 400px;
                margin :auto;
                border: 2px solid #eee;
                padding: 20px;
                border-radius: 5px;
                background: #fff;
            }
            #app-nav{
                height: 70px;
                margin:0 -15px 50px;
            }
            #app-nav .navbar-brand{
                color: #e6e6e6;
            }
            .action-btn .btn{
                width : 100%;
            }
            .action-btn #submit{
                margin-bottom:20px;
            }
            #reg-img{
                width: 75%;
                display: block;
                margin: auto;
            }
            #welcome-text{
                margin-top: -40px;
                text-align: center;
            }
            
        </style>
    </head>
    <body class="container-fluid">
        
        <nav class="navbar navbar-light bg-primary" id="app-nav">
            <span class="navbar-brand mb-0 h1">Citizen Card Registration Portal</span>
        </nav>
         <h2 class="text-info" id="welcome-text">Enrollment successful!!!</h2>
         
        
        <div class="row">

            <div class="col-6">
                <img src="images/undraw_live_collaboration_2r4y.svg" id="reg-img">
            </div>
            
            <div class="col-6">
                <form action="dis_enr_det1.jsp" method="post">
                 <div class="action-btn">
                        <input type="submit" value="view enrolled details" id="submit" class="btn btn-primary">
                        <a href="./enroll1.jsp" class="btn btn-link">back</a>
                 </div>
                    </form>
                
            </div>
        </div>
        
    </body>
</html>