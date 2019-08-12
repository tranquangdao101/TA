<%-- 
    Document   : tuvanhocvien
    Created on : May 9, 2018, 8:02:22 PM
    Author     : Admin
--%>

<%@page import="model.KhachHang"%>
<%@page import="DAO.KhachHangDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tư vấn học viên</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">
            <ol class="breadcrumb" id="step2">
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Phản hồi</a></li>
                <li class="active"><a href="#">Chi tiết phản hồi</a></li>
            </ol>
            <%
                int kh_ma = Integer.parseInt(request.getParameter("kh_ma"));
                KhachHang kh = DAO.KhachHangDAO.getKhachHangTheoMa(kh_ma);
                DAO.KhachHangDAO.capnhatTuVan(kh_ma);
            %>
            <div class="col-xs-12">
                <strong><%= kh.getKh_nguoigui() %></strong> <span class="hidden-xs">(<%= kh.getKh_email() %>)</span><br><small><i class="fa fa-calendar"></i> <%= kh.getKh_datengaygui() %> </small>
                <p></p>
                <p<%= kh.getKh_tieude() %> </p>
                <p><%= kh.getKh_noidung() %></p>
                <div id="content">
                    
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-8">
                        <a href="xoatuvan.jsp?kh_ma=<%= kh_ma %>" class="btn btn-danger" onclick="return confirm('Bạn có chắc muốn xóa?');"><i class="fa fa-trash-o"></i> Xóa</a>
                        <a class="btn btn-warning" href="tuvanhocvien.jsp"><i class="fa fa-reply"></i> Trở về</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
