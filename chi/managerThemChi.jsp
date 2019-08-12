<%-- 
    Document   : managerThemChi
    Created on : May 26, 2018, 10:12:48 PM
    Author     : mrdao
--%>

<%@page import="model.ThuChi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body
        <%
       String MAPHIEUCHI = request.getParameter("MAPHIEUCHI");
        String NGAYLAP = request.getParameter("NGAYLAP");
        int SOTIENCHI =Integer.parseInt(request.getParameter("SOTIENCHI"));
        String NOIDUNG = request.getParameter("NOIDUNG");
        String NGUOITHU = request.getParameter("NGUOITHU");
        ThuChi tc= new ThuChi(MAPHIEUCHI,NGAYLAP,SOTIENCHI,NOIDUNG,NGUOITHU);
        DAO.ThuChiDAO.themChi(tc);
        response.sendRedirect("/QuanLyTTTA/chi/ThemChi");
%>
    </body>
</html>
