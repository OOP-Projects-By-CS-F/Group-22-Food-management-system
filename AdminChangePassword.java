
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
import javax.servlet.http.HttpSession;


public class AdminChangePassword extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String oldpass=req.getParameter("old");
        String newpass=req.getParameter("new");
        String confirmpass=req.getParameter("confirm");
        HttpSession ses=req.getSession();
        String email=(String)ses.getAttribute("ademail");
        PrintWriter out=resp.getWriter();
        resp.setContentType("text/html");
        if(newpass.equals(confirmpass)){
            try{
                Class.forName("com.mysql.jdbc.Driver");
                 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
                 String query="Update admin Set pass='"+newpass+"' where id='"+email+"'and pass='"+oldpass+"'";
                 PreparedStatement pst=con.prepareStatement(query);
                 int updateQuery=pst.executeUpdate();
                 if(updateQuery>0){
                     out.println("<script>alert('SuccessFully Updated!!!!!');window.location.href='AdminChangePassword.jsp';</script>");
                 }
                 else{
                     out.println("<script>alert('Invalid Old Password....Please Try Again!!!!');window.location.href='AdminChangePassword.jsp';</script>");
                 }
            }
            catch(Exception e){
                out.println("<script>alert('Some Error Occured....Please Try Again!!!!');window.location.href='AdminChangePassword.jsp';</script>");
            }
        }
        else{
            out.println("<script>alert('New And Connfirm Passwords are different....Please Try Again!!!!');window.location.href='AdminChangePassword.jsp';</script>");
        }
    }
    
}
