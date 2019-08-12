<%-- 
    Document   : navLeft
    Created on : May 9, 2018, 3:51:19 PM
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
                            <a href="post.html">
                                <i class="fa fa-edit"></i> <span>Tin tức</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="product.html">
                                <i class="fa fa-fire"></i><span>Sản phẩm</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="type_product.html">
                                <i class="fa fa-bars"></i> <span>Loại sản phẩm</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="nhanvien.jsp">
                                <i class="fa fa-envelope-o"></i> <span>Phản hồi<span class="badge pull-right">1</span></span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="slider.html">
                                <i class="fa fa-picture-o"></i> <span>Slider</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="<%=request.getContextPath() %>/view/nhanvien.jsp">
                                <i class="fa fa-user"></i> <span>Tài khoản</span>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="setting.html">
                                <i class="fa fa-wrench"></i> <span>Cấu hình</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
    </body>
</html>
