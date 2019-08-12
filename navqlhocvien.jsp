<%-- 
    Document   : sideqlhocvien
    Created on : May 9, 2018, 5:24:06 PM
    Author     : Admin
--%>

<%@page import="model.KhachHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Site quản lý học viên</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/admin.css" rel="stylesheet">
        <link href="../css/introjs.min.css" rel="stylesheet">
        <script type="../text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="../text/javascript" src="js/bootstrap.min.js"></script>
        <script type="../text/javascript" src="js/intro.min.js"></script>
        <script type="../text/javascript" src="js/admin.js"></script>
    </head>
    <body>
        <div class="clearfix">
            <div id="sidebar-bg"></div>
            <div id="sidebar" role="navigation">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="fa fa-th"></i><span> Danh mục quản lý</span>
                            <b class="fa fa-plus-sign visible-xs pull-right"></b>
                        </h3>
                    </div>

                    <ul id="menu" class="list-group">
                        <li class="list-group-item">
                            <a href="tuvanhocvien.jsp">
                                <%
                                    ArrayList<KhachHang> list2 = DAO.KhachHangDAO.getListTaiKhoanChuaXem();
                                %>
                                <i class="fa fa-envelope-o"></i> <span>Tư vấn học viên</span><span class="badge pull-right"><%= list2.size() %></span></span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="dshocvien.jsp">
                                <i class="fa fa-user"></i> <span>Danh sách học viên</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="dslop.jsp">
                                <i class="fa fa-edit"></i><span>Danh sách lớp</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="dskhoahoc.jsp">
                                <i class="fa fa-edit"></i> <span>Danh sách khoá học</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="dshocphi.jsp">
                                <i class="fa fa-edit"></i> <span>Danh sách học phí</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="thongkehocvien.jsp">
                                <i class="fa fa-search-plus"></i> <span>Thống kê</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

    </body>
</html>
