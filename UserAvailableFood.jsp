<!DOCTYPE html>
<html>
    <%@page import="java.sql.*"%>
    <head>
        <meta charset="utf-8" />
        <title> Available Food</title>
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
                        <li class="nav-item  "><a href="UserHome.jsp" class="nav-link">Home</a></li>
                        <li class="nav-item active"><a href="UserAvailableFood.jsp" class="nav-link">Available Food</a></li>
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
                            <h1 class=" mt-5 py-5" style="text-align: center;">Available Food Details</h1>
                            <table border="1" style="width: 100%; text-align: center">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col" style="width:5%;">Food ID</th>
                                        <th scope="col">Food Name</th>
                                        <th scope="col">Food Type</th>
                                        <th scope="col">Food Category</th>
                                        <th scope="col">Food Description</th>
                                        <th scope="col">Food Price</th>
                                        <th scope="col">Add TO Cart</th>

                                    </tr>
                                </thead>

                                <%                        try {
                                        int count = 0;
                                        Class.forName("com.mysql.cj.jdbc.Driver");
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
                                        Statement st = con.createStatement();
                                        ResultSet rs = st.executeQuery("select * from fooditems");
                                        while (rs.next()) {
                                            count++;
                                %>

                                <tbody>
                                    <tr>
                                        <th scope="row"><%=rs.getString("foodid")%></th>
                                        <td><%=rs.getString("foodname")%></td>
                                        <td><%=rs.getString("foodtype")%></td>
                                        <td><%=rs.getString("foodcategory")%></td>
                                        <td><%=rs.getString("fooddesc")%></td>
                                        <td><%=rs.getString("foodprice")%></td>
                                        <td><a class="btn btn-primary btn-sm" onclick="fun1(<%=rs.getString("foodid")%>)">ADD TO CART</a></td>
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
                        <script>
                           function fun1(x){
                                var x1=prompt("Enter Quantity You Want...");
                                if(x1 != null){
                                    window.location.replace("addtocart?fid="+x+"&quantity="+x1);
                                }
                            }
                        </script>
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