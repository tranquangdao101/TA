<%-- 
    Document   : nhanvien
    Created on : May 9, 2018, 5:30:03 PM
    Author     : Admin
--%>

<%@page import="model.NhanVien"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.D2F"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nhân viên</title>
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
        <jsp:include page="header.jsp"/>
        <jsp:include page="navLeft.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="product.html">Nhân viên</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="post_form" method="post" action="" role="form">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <a href="new-product.html" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                            <div class="btn-group pull-right hidden-xs" id="div-search">
                                <input id="search" name="search" type="text" value="" class="form-control" placeholder="Tìm kiếm">
                                <span class="fa fa-search"></span>
                            </div>
                        </div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Họ & Tên</th>
                                    <th class="hidden-xs">Tên đăng nhập</th>
                                    <th class="hidden-xs">Mật khẩu</th>
                                    <th class="hidden-xs">SĐT</th>
                                    <th class="hidden-xs">Email</th>
                                    <th class="hidden-xs">Quê quán</th>
                                    <th class="hidden-xs">Chức vụ</th>
                                    <th class="hidden-xs">Nhân viên</th>
                                    <th>Sửa</th>
                                    <th>Xoá</th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    ArrayList<NhanVien> list = DAO.NhanVienDAO.getListTaiKhoan();

                                    for (NhanVien nv : list) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= nv.getNv_hoten()%></td>
                                    <td>
                                        <a href="new-product.html"><%= nv.getNv_tendangnhap()%></a>
                                    </td>
                                    <td class="hidden-sm hidden-xs"><%= nv.getNv_matkhau()%></td>
                                    <td class="hidden-sm hidden-xs"><%= nv.getNv_sodt()%></td>
                                    <td class="hidden-sm hidden-xs"><%= nv.getNv_email()%></td>
                                    <td class="hidden-sm hidden-xs"><%= nv.getNv_quequan()%></td>
                                    <td class="hidden-sm hidden-xs"><%= (nv.getRole() == 1) ? "Quản trị viên" : (nv.getRole() == 2) ? "Phòng ban kế toán" : "Phòng ban học viên"%></td>
                                    <td class="hidden-sm hidden-xs"><%= (nv.getLoaiNV() == 0) ? "Chính thức" : "Hợp đồng"%></td>
                                    <td>
                                        <a href="new-product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                                    </td>
                                    <td>
                                        <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Đã ẩn với người dùng"></i>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                        <div class="text-right">
                            <ul class="pagination" id="step5">
                                <li class="disabled"><span>«</span></li>
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">»</a></li>
                            </ul>

                            </form>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
