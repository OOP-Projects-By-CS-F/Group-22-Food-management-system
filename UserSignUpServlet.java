
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

public class UserSignUpServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String mob=req.getParameter("mobile");
        String pass=req.getParameter("pass");
        String address=req.getParameter("address");
       PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            String queryString = "insert into customer(custname,custemail,custmob,custaddress,custpass) values(?,?,?,?,?)";
            PreparedStatement st1 = con.prepareStatement(queryString);
           // st1 = con.prepareStatement(queryString);
            st1.setString(1, name);
            st1.setString(2, email);
            st1.setString(3, mob);
            st1.setString(4, address);
            st1.setString(5, pass);
            
            int updateQuery = st1.executeUpdate();
            if (updateQuery > 0) {
                out.print("<script>alert('Successfully Registered!!!!');window.location.href='UserLogin.jsp';</script>");
            } else {
                out.print("<script>alert('Some Error Occured Please Try Again!!!!');window.location.href='UserSignUp.jsp';</script>");
            }
        } catch (Exception e) {
            out.println(e);
        }

    }

}
