
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


public class RemoveCart extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cid=req.getParameter("cid");
        PrintWriter out=resp.getWriter();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
            String sql="delete from cart where cartid="+cid;
            PreparedStatement ps=con.prepareStatement(sql);
            int update=ps.executeUpdate();
            if(update >0){
                 out.println("<script>alert('SuccessFully Removed!!!!!');window.location.href='UserShowCart.jsp';</script>");
            }
        } catch (Exception e) {
            out.println(e);
        }
    }

}