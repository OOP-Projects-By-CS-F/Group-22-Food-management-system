package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddToCart extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fid = req.getParameter("fid");
        int fid1=Integer.parseInt(fid);
        String q = req.getParameter("quantity");
        int q1=Integer.parseInt(q);
        HttpSession ses = req.getSession();
        String email = (String) ses.getAttribute("custemail");
        PrintWriter out = resp.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from fooditems where foodid="+fid1);
            if(rs.next()){
                String fname=rs.getString("foodname");
                int price=rs.getInt("foodprice")*q1;
                
                PreparedStatement ps=null;
                String query="insert into cart(foodid,foodname,quantity,price,email) values(?,?,?,?,?)";
                ps=con.prepareStatement(query);
                ps.setInt(1, fid1);
                ps.setString(2, fname);
                ps.setInt(3,q1);
                ps.setInt(4, price);
                ps.setString(5, email);
                int update=ps.executeUpdate();
                if(update >0){
                     out.println("<script>alert('SuccessFully Added to Cart!!!!!');window.location.href='UserAvailableFood.jsp';</script>");
                }
                else{
                    out.println("<script>alert('Some Error Occured Please Try Again!!!!!');window.location.href='UserAvailableFood.jsp';</script>");
                }
            }
        } catch (Exception e) {
            out.println(e);
        }
    }

}
