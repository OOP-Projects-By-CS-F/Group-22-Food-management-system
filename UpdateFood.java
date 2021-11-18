
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


public class UpdateFood extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        try {
            String fid=req.getParameter("fid");
            int fid1=Integer.parseInt(fid);
            String fname = req.getParameter("fname");
            String ftype = req.getParameter("ftype");
            String fcat = req.getParameter("fcat");
            String fprice = req.getParameter("fprice");
            int fprice1 = Integer.parseInt(fprice);
            String fdesc = req.getParameter("fdesc");

//        out.println(fname);
//        out.println(ftype);
//        out.println(fcat);
//        out.println(fprice1);
//        out.println(fdesc);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", "");
            String query = "Update fooditems set foodname=?,foodprice=?,foodcategory=?,foodtype=?,fooddesc=? where foodid="+fid1;
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, fname);
            pst.setInt(2, fprice1);
            pst.setString(3, fcat);
            pst.setString(4, ftype);
            pst.setString(5, fdesc);
            int updateQuery = pst.executeUpdate();
            if (updateQuery > 0) {
                out.println("<script>alert('SuccessFully Updated!!!!!');window.location.href='AdminUpdateRemFood.jsp';</script>");
            } else {
                out.println("<script>alert('Some Error Occured....Please Try Again!!!!');window.location.href='AdminUpdateRemFood.jsp';</script>");
            }
        } catch (Exception e) {
            out.println("<script>alert('Some Error Occured....Please Try Again!!!!');window.location.href='AdminUpdateRemFood.jsp';</script>");
        }
    }

}
