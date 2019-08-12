<%-- 
    Document   : xoatuvan
    Created on : May 23, 2018, 9:39:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
                        int kh_ma = Integer.parseInt(request.getParameter("kh_ma"));
                        DAO.KhachHangDAO.deleteTuVan(kh_ma);
                        response.sendRedirect("./tuvanhocvien.jsp");
            %>
    </body>
</html>
