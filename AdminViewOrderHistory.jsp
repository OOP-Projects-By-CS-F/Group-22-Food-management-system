<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title>View Order History</title>
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
                    <a href="" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                    <ul class="nav">
                        <li class="nav-item  "><a href="AdminHome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                 Food 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AddFood.jsp">Add Food Items</a>
                                <a class="dropdown-item" href="AdminUpdateRemFood.jsp">Update/Remove Food Items</a>
                                <a class="dropdown-item " href="AdminViewFood.jsp">View Food Items</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Customer 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="AdminViewCustomer.jsp">View Customer Details</a>
                                <a class="dropdown-item active" href="">View Customer Order History</a>
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
                    <div class="col-md-12">
                        <div style="color: bisque">

                            <h1 class="display-4 mt-5 py-5" style="text-align: center;">Customer Order History</h1>
                            <table border="1" style="width: 100%; text-align: center">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" style="width:5%;">#</th>
                                        <th scope="col">Order ID</th>
                                        <th scope="col">Customer Email</th>
                                        <th scope="col">Food Name</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Total Bill</th>
                                    </tr>
                                </thead>

                                <%                        try {
                                        int count = 0;
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from foodorder order by orderid");
                                        while (rs.next()) {
                                            count++;
                                %>

                                <tbody>
                                    <tr>
                                        <th scope="row"><%=count%></th>
                                        <td><%=rs.getString("orderid")%></td>
                                        <td><%=rs.getString("custemail")%></td>
                                        <td><%=rs.getString("foodname")%></td>
                                        <td><%=rs.getString("Date")%></td>
                                        <td><%=rs.getString("total_bill")%></td>
                                    </tr>
                                </tbody>

                                <%
                                        }
                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                %>
                            </table>

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