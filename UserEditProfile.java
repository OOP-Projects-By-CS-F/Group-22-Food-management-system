
package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserEditProfile extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         String name=req.getParameter("name");
        String email=req.getParameter("email");
        String mob=req.getParameter("mobile");
        String address=req.getParameter("address");
       PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            String queryString = "Update customer set custname=?,custmob=?,custaddress=? where custemail='"+email+"'";
            PreparedStatement st1 = con.prepareStatement(queryString);
           // st1 = con.prepareStatement(queryString);
            st1.setString(1, name);
            st1.setString(2, mob);
            st1.setString(3, address);
            
            
            int updateQuery = st1.executeUpdate();
            if (updateQuery > 0) {
                out.print("<script>alert('Successfully Update!!!!');window.location.href='UserEditProfile.jsp';</script>");
            } else {
                out.print("<script>alert('Some Error Occured Please Try Again!!!!');window.location.href='UserEditProfile.jsp';</script>");
            }
        } catch (Exception e) {
            out.println(e);
        }

    }

}
