<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Online Food Management</title>
    <!-- bootstrap cdn -->
    <link rel="stylesheet" type="text/css"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <!-- font awesome cdn -->
    <link rel="stylesheet" type="text/css"
        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <!-- style.css -->
    <link rel="stylesheet" type="text/css" href="style1.css" />
    <!-- jquery cdn -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.js"></script>
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 navbar">
                <a href="index.jsp" class="logo navbar-brand text-white offset-md-2">Online Food System</a>
                <ul class="nav">
                    <li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="AdminLogin.jsp" class="nav-link">Admin</a></li>
                    
                    <li class="nav-item"><a href="UserLogin.jsp" class="nav-link">User Login</a></li>
                    <li class="nav-item"><a href="AboutUs.jsp" class="nav-link">About Us</a></li>
                </ul>
            </div>
            <!-- slider banner	 -->

            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="info">
                            <h1>WELCOME</h1>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="info">
                            <h1>Food Lover</h1>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="info">
                            <h1>Delicious Food</h1>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>



    <!-- scripts -->
    <!-- bootstrap javascript cdn -->
    <script type="text/javascript"
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>