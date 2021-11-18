package com.food;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OrderFood extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession ses = req.getSession();
        String email = (String) ses.getAttribute("custemail");
        String fn = req.getParameter("fn");
        String tb = req.getParameter("tb");
        int total = Integer.parseInt(tb);
        String cid = req.getParameter("cid");
        Date date = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
        String strDate = formatter.format(date);

        PrintWriter out = resp.getWriter();
        resp.setContentType("text/html");
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/food", "root", ""); //ctrl+shift+i
            String sql = "insert into foodorder(custemail,Date,total_bill,foodname) values (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, strDate);
            ps.setInt(3, total);
            ps.setString(4, fn);
            int update = ps.executeUpdate();
            if (update > 0) {
//                out.println("<script>alert('SuccessFully Removed!!!!!');window.location.href='UserShowCart.jsp';</script>");
                String query = "delete from cart where cartid=" + cid;
                PreparedStatement ps1 = con.prepareStatement(query);
                int update1 = ps1.executeUpdate();
                if (update1 > 0) {
                    out.println("<script>alert('SuccessFully Ordered..!!!!!');window.location.href='UserShowCart.jsp';</script>");
                }
            }
        } catch (Exception e) {
            out.println(e);
        }
    }

}
