
package com.food;
//ctrl+shift+i

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLoginServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email=req.getParameter("email");
        String pass=req.getParameter("pass");
        PrintWriter out=resp.getWriter();
//        out.println(email);
//        out.println(pass);
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from admin where id='"+email+"' and pass='"+pass+"'");
            if(rs.next()){
                HttpSession ses=req.getSession();
                ses.setAttribute("ademail", email);
               resp.sendRedirect("AdminHome.jsp");
            }
            else{
                 resp.setContentType("text/html");
                out.println("<script>alert('Invalid Email Id or Password!! Please Try Again...');window.location.href='AdminLogin.jsp';</script>");
                
                con.close();
            }
        }
        catch(Exception e){
            out.println(e);
        }


    }
    
}
