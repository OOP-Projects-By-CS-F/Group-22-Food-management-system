<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title>User Update profile</title>
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
        <%
            String email = (String) session.getAttribute("custemail");
        %>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 navbar">
                    <a href="#" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                    <ul class="nav">
                        <li class="nav-item  "><a href="UserHome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item "><a href="UserAvailableFood.jsp" class="nav-link">Available Food</a></li>
                        <li class="nav-item dropdown ">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cart 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="UserShowCart.jsp">Show My Cart</a>
                                <a class="dropdown-item " href="OrderHistory.jsp">Order History</a>
                            </div>
                        </li>
                        <li class="nav-item active"><a href="UserEditProfile.jsp" class="nav-link">Edit Profile</a></li>
                        <li class="nav-item"><a href="userlogout" class="nav-link">Logout</a></li>
                    </ul>
                </div>
                <!-- slider banner	 -->
            </div>
            <div class="container">
                <div class="row mx-auto">
                    <div class="col-md-12">
                        <div style="color: bisque">
                            <h1 class=" mt-5 py-5" style="text-align:  center;">Edit Profile</h1> 


                            <%                        try {
                                    int count = 0;
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from customer where custemail='" + email + "'");
                                    if(rs.next()) {
                                        count++;
                            %>
                            <form method="post" action="editprofile">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Name</label>
                                    <input type="text" name="name" required="" value="<%=rs.getString("custname")%>" autocomplete="off" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" name="email" value="<%=rs.getString("custemail")%>" readonly="" autocomplete="off"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Mobile Number</label>
                                    <input type="text" name="mobile" required=""  pattern="[0-9]{10}"  value="<%=rs.getString("custmob")%>" autocomplete="off"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter No.">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Address</label>
                                    <input type="text" required="" name="address" value="<%=rs.getString("custaddress")%>" autocomplete="off" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address">
                                </div>

                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>


                            <%
                                    }
                                } catch (Exception e) {
                                    out.println(e);
                                }
                            %>

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