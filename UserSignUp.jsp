<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>User SignUp</title>
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
        body{
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
            <div class="col-md-12 navbar ">
                <a href="index.jsp" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                <ul class="nav">
                    <li class="nav-item "><a href="index.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="AdminLogin.jsp" class="nav-link">Admin</a></li>
                    <li class="nav-item active"><a href="UserLogin.jsp" class="nav-link">User Login</a></li>
                    <li class="nav-item"><a href="AboutUs.jsp" class="nav-link">About Us</a></li>
                </ul>
            </div>
            <!-- slider banner	 -->
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-10">
            <div style="color: bisque">
                <h1 class="display-4 mt-5 py-5" style="text-align: center;">User SignUp</h1>
                <p style="text-align: justify;">
                <form method="post" action="usersignup">
                        <div class="form-group">
                          <label for="exampleInputEmail1">Name</label>
                          <input type="text" name="name"  required="" autocomplete="off" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name">
                        </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" name="email" required="" autocomplete="off"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Mobile Number</label>
                            <input type="text" name="mobile" required="" autocomplete="off"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter No.">
                          </div>
                          <div class="form-group">
                            <label for="exampleInputEmail1">Address</label>
                            <input type="text" name="address" required="" autocomplete="off" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address">
                          </div>
                        <div class="form-group">
                          <label for="exampleInputPassword1">Password</label>
                          <input type="Password" name="pass" required=""class="form-control" id="exampleInputPassword1" placeholder="Password">
                        </div>
                       
                        <button type="submit" class="btn btn-primary">Sign Up</button>
                        <button type="submit" class="btn btn-primary"><a class="btn-primary" href="UserLogin.jsp">Login</a></button>
                      </form>
                </p>
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