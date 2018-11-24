
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
         <h2 class="text-info" id="welcome-text">Enter Your Details</h2>
         
        
        <div class="row">

            <div class="col-6">
                <img src="images/undraw_live_collaboration_2r4y.svg" id="reg-img">
            </div>
            
            <div class="col-6">
                <form action="en_det.jsp" method="post">
                    
                    <div class="form-group">
                        <label for="dob">Date of Birth</label>
                        <input type="date" name="dob" id="dob" class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label for="gen">Gender</label>
                        <input type="text" name="gen" id="gen" class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label for="proof">Proof Submitted</label>
                        <input type="text" name="proof" id="proof" class="form-control">
                    </div>
                    
                    <div class="form-group">
                        <label for="pnum">Proof Number </label>
                        <input type="number" name="pnum" id="pnum" class="form-control">
                    </div>


                    <div class="form-group">
                        <label for="fname">Father/Husband Name</label>
                        <input type="text" name="fname" id="fname" class="form-control">
                    </div>

                    <div class="action-btn">
                        <input type="submit" value="Proceed" id="submit" class="btn btn-primary">
                    </div>
                    
                </form>
                
            </div>
        </div>
        
    </body>
</html>

