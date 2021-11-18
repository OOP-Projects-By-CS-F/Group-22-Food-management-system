<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title>Add Food</title>
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
            String fid = request.getParameter("fid");
            int foodid = Integer.parseInt(fid);
        %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 navbar">
                    <a href="" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                    <ul class="nav">
                        <li class="nav-item  "><a href="AdminHome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 Food
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item active" href="AddFood.jsp">Add Food Items</a>
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
                            <%                        try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                    Statement st = con.createStatement();
                                    ResultSet rs = st.executeQuery("select * from fooditems where foodid=" + foodid);
                                    if (rs.next()) {
                            %>

                            <h1 class="display-4 mt-5 py-5" style="text-align: center;">Add Food Items</h1>
                            <p style="text-align: justify;">
                            <form method="post" action="updatefood">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Food Name</label>
                                    <input type="text" name="fname" value="<%=rs.getString("foodname")%>" autocomplete="off" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Food Name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Food Type</label>
                                    <input type="text" name="ftype" value="<%=rs.getString("foodtype")%>" autocomplete="off"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Food Type Like Indian, Chinese...">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Food Category</label>
                                    <select class="form-control" name="fcat">
                                        <option><%=rs.getString("foodcategory")%></option>
                                        <option value="BREAKFAST">BreakFast</option>
                                        <option value="BEVERAGES">Beverages</option>
                                        <option value="PANEER">Paneer Special</option>
                                        <option value="ROTI">Roti</option>
                                        <option value="RICE">Rice</option>
                                        <option value="DAL">Dal</option> 
                                        <option value="SWEET">Sweet</option>
                                        <option value="SALAD">Salad</option>
                                        <option value="JUNK FOOD">Junk Food</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Food Description</label>
                                    <input type="text" name="fdesc" value="<%=rs.getString("fooddesc")%>" autocomplete="off" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Food Description">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Food Price</label>
                                    <input type="number" value="<%=rs.getString("foodprice")%>" name="fprice" class="form-control" id="exampleInputPassword1" placeholder="Enter the Food Price">
                                </div>
                                <input type="hidden" name="fid" value="<%=rs.getInt("foodid")%>">
                                <button type="submit" class="btn btn-primary">Update</button>
                            </form>
                            </p>
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



            <!-- scripts -->
            <!-- bootstrap javascript cdn -->
            <script type="text/javascript"
            src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>

</html>