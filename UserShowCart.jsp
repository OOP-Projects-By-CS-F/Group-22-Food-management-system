<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title>My Cart</title>
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
            String email=(String)session.getAttribute("custemail");
            %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 navbar">
                    <a href="#" class="logo navbar-brand text-white offset-md-2 ">Online Food System</a>
                    <ul class="nav">
                        <li class="nav-item  "><a href="UserHome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item "><a href="UserAvailableFood.jsp" class="nav-link">Available Food</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Cart 
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item active" href="UserShowCart.jsp">Show My Cart</a>
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
                            <h1 class=" mt-5 py-5" style="text-align: center;">My Cart</h1>
                            <table border="1" style="width: 100%; text-align: center">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" style="width:5%;">Cart ID</th>
                                        <th scope="col">Food ID</th>
                                        <th scope="col">Food Name</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Amount</th>
                                        <th scope="col">Order</th>
                                        <th scope="col">Remove</th>

                                    </tr>
                                </thead>

                                <%                        try {
                                        int count = 0;
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from cart where email='"+email+"'");
                                        while (rs.next()) {
                                            count++;
                                %>

                                <tbody>
                                    <tr>
                                        <th scope="row"><%=rs.getString("cartid")%></th>
                                        <td><%=rs.getString("foodid")%></td>
                                        <td><%=rs.getString("foodname")%></td>
                                        <td><%=rs.getString("quantity")%></td>
                                        <td><%=rs.getString("price")%></td>
                                        <td><a href="orderfood?tb=<%=rs.getString("price")%>&fn=<%=rs.getString("foodname")%>&cid=<%=rs.getString("cartid")%>">Order</a></td>
                                        <td><a href="removecart?cid=<%=rs.getString("cartid")%>">Remove</a></td>
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