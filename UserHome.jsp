<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "must-revalidate");
    response.setDateHeader("Expires", 0);
    if (session.getAttribute("custemail") == null) {
        response.sendRedirect("UserLogin.jsp");
    } else {

%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>User Home</title>
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

    <style>
        body {
            background-image: url(images/11.jpg);
            background-size: cover;
            background-attachment: fixed;
            /* background-repeat: no-repeat; */
        }
    </style>
</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12 navbar">
                <a href="#" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                <ul class="nav">
                    <li class="nav-item active "><a href="#" class="nav-link">Home</a></li>
                    <li class="nav-item "><a href="UserAvailableFood.jsp" class="nav-link">Available Food</a></li>
                    <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cart 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="UserShowCart.jsp">Show My Cart</a>
                                <a class="dropdown-item" href="OrderHistory.jsp">Order History</a>
                            </div>
                        </li>
                        <li class="nav-item "><a href="UserEditProfile.jsp" class="nav-link">Edit Profile</a></li>
                    <li class="nav-item"><a href="userlogout" class="nav-link">Logout</a></li>
                </ul>
            </div>
            <!-- slider banner	 -->
        </div>
        <div class="container">
            <div class="row mx-auto">
                <div class="col-md-10">
                    <div style="color: bisque">
                        <h1 class=" mt-5 py-5" style="text-align: center;">Welcome User To Online Food System</h1>
                        <div class="col-lg-5 mx-auto">
                            <h2>Quick Links</h2>
                            <hr>
                            <ul>
                                <li><a href="UserAvailableFood.jsp" style="color: bisque;">Available Food</a></li>
                                <hr>
                                <li><a href="UserEditProfile.jsp" style="color: bisque;">Edit Profile</a></li>
                                <hr>
                                <li><a href="userlogout" style="color: bisque;">Logout</a></li>
                                <hr>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>



        <!-- scripts -->
        <!-- bootstrap javascript cdn -->
        <script type="text/javascript"
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>

</html>
<%
  }  
%>