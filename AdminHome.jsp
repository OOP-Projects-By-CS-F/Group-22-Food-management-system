<%
    response.setHeader("Pragma", "No-cache");
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Cache-Control", "must-revalidate");
    response.setDateHeader("Expires", 0);
    if (session.getAttribute("ademail") == null) {
        response.sendRedirect("AdminLogin.jsp");
    } else {

%>


<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8" />
        <title>Admin Home</title>
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
                    <a href="index.html" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                    <ul class="nav">
                        <li class="nav-item active "><a href="#" class="nav-link">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Food 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AddFood.jsp">Add Food Items</a>
                                <a class="dropdown-item" href="AdminUpdateRemFood.jsp">Update/Remove Food Items</a>
                                <a class="dropdown-item" href="AdminViewFood.jsp">View Food Items</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Customer 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AdminViewCustomer.jsp">View Customer Details</a>
                                <a class="dropdown-item" href="AdminViewOrderHistory.jsp">View Customer Order History</a>
                            </div>
                        </li>
                       <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Profile 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AdminChangePassword.jsp">Change Password</a>
                            </div>
                        </li>
                        <li class="nav-item"><a href="adminlogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
                <!-- slider banner	 -->
            </div>
            <div class="container">
                <div class="row mx-auto">
                    <div class="col-md-10">
                        <div style="color: bisque">

                            <h1 class="display-4 mt-5 py-5" style="text-align: center;">Welcome Admin</h1>
                            <div class="col-lg-5 mx-auto">
                                <h2>Quick Links</h2> <hr>
                                <ul>
                                    <li><a href="AddFood.jsp" style="color: bisque;">Add Food Items</a></li> <hr>
                                    <li><a href="AdminUpdateRemFood.jsp" style="color: bisque;">Update/Remove Food Items</a></li> <hr>
                                    <li><a href="AdminViewFood.jsp" style="color: bisque;">View Food Items</a></li> <hr>
                                    <li><a href="AdminChangePassword.jsp" style="color: bisque;">Change Password</a></li> <hr>
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
<%    }
%>