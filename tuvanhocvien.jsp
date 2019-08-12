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
         <!-- Bootstrap -->
        <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">

        <!-- Datatables -->
        <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">

            <ol class="breadcrumb" id="step2">
                <li><a href="indexhv.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Phản hồi</a></li>

            </ol>
            <div class="col-xs-12">
                <form id="admin-form" method="post" action="" role="form">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->
                            <div class="btn-group" id="step3">
                                <div class="form-group">
                                    <!-- Single button -->

                                    <a href="./themtuvan.jsp" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                                </div>

                            </div>
                            <div class="btn-group pull-right hidden-xs" id="div-search">
                                
                            </div>
                        </div>

                        <%
                            ArrayList<KhachHang> list2 = DAO.KhachHangDAO.getListTaiKhoanChuaXem();
                        %>
                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Đóng</span></button>
                            Có <strong><%= list2.size()%></strong> phản hồi mới chưa đọc
                        </div>
                        <table class="table table-bordered table-hover" id="datatable-buttons">
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Mã khách hàng</th>
                                    <th>Tiêu đề</th>
                                    <th>Người gửi</th>
                                    <th class="hidden-xs">Email</th>
                                    <th class="hidden-sm hidden-xs">Ngày gửi</th>
                                    <th>Tình trạng</th>

                                </tr>
                            </thead>
                            <tbody>
                                <tr class="alert alert-info" style="color: #333">
                                    <%
                                        ArrayList<KhachHang> list = DAO.KhachHangDAO.getListTaiKhoan();
                                        for (KhachHang kh : list) {
                                    %>
                                    <td class="hidden-xs"><%= kh.getKh_ma()%></td>
                                    <td>
                                        <a href="./chitiettuvan.jsp?kh_ma=<%= kh.getKh_ma()%>"><%= kh.getKh_tieude()%></a>
                                    </td>
                                    <td class="hidden-xs"><%= kh.getKh_nguoigui()%></td>
                                    <td class="hidden-sm hidden-xs"><%= kh.getKh_email()%></td>
                                    <td class="hidden-sm hidden-xs"><%= kh.getKh_datengaygui()%></td>
                                    <td>
                                        <%
                                            if (kh.getKh_tinhtang() == 0) { %>
                                        <i class="fa fa-envelope-o" data-toggle="tooltip" data-placement="top" title="Phản hồi chưa đọc"></i>

                                        <%
                                        } else {
                                        %>
                                        <i class="fa fa-check text-success" data-toggle="tooltip" data-placement="top" title="Phản hồi đã đọc"></i>

                                        <% }%>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>

                        <div id="step6">
                            <p><strong><i class="fa fa-bookmark"></i>Ghi chú: </strong></p>
                            <p class="note-items"><i class="fa fa-envelope-o"></i> Tư vấn chưa đọc.</p>
                            <p class="note-items"><i class="fa fa-check text-success"></i> Tư vấn đã đọc.</p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
    
        <!-- jQuery -->
<script src="vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- FastClick -->

<!-- Datatables -->
<script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
<script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
<script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>

<!-- Custom Theme Scripts -->
<script src="build/js/custom.min.js"></script>
</html>
