<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title>Order History</title>
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
                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cart 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="UserShowCart.jsp">Show My Cart</a>
                                <a class="dropdown-item active" href="OrderHistory.jsp">Order History</a>
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
                    <div class="col-md-12">
                        <div style="color: bisque">
                            <h1 class=" mt-5 py-5" style="text-align: center;">Your Order History</h1>
                            <table border="1" style="width: 100%; text-align: center">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Order ID</th>
                                        <th scope="col">Food Name</th>

                                        <th scope="col">Date</th>
                                        <th scope="col">Total Bill Amount</th>
                                    </tr>
                                </thead>

                                <%                        try {
                                        int count = 0;
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from foodorder where custemail='" + email + "'");
                                        while (rs.next()) {
                                            count++;
                                %>

                                <tbody>
                                    <tr>
                                        <td scope="row"><%=count%></td>
                                        <td><%=rs.getString("orderid")%></td>
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
        </div>



        <!-- scripts -->
        <!-- bootstrap javascript cdn -->
        <script type="text/javascript"
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>

</html>