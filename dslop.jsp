<%-- 
    Document   : dshocvien
    Created on : May 9, 2018, 8:09:55 PM
    Author     : Admin
--%>

<%@page import="model.Lop"%>
<%@page import="model.HocVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh sách lớp</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/admin.css" rel="stylesheet">
        <link href="../css/introjs.min.css" rel="stylesheet">
        <script type="../text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="../text/javascript" src="js/bootstrap.min.js"></script>
        <script type="../text/javascript" src="js/intro.min.js"></script>
        <script type="../text/javascript" src="js/admin.js"></script>
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
            <ol class="breadcrumb">
                <li><a href="./trangchu.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="dslop.jsp">Lớp</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="post_form" method="post" action="" role="form">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <a href="themlop.jsp" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                            <div class="btn-group pull-right hidden-xs" id="div-search">
                                <input id="search" name="search" type="text" value="" class="form-control" placeholder="Tìm kiếm">
                                <span class="fa fa-search"></span>
                            </div>
                        </div>
                        <table id="datatable-buttons" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Mã lớp</th>
                                    <th class="hidden-xs">Tên lớp</th>
                                    <th class="hidden-xs">Trạng thái</th>
                                    <th class="hidden-xs">Ngày bắt đầu</th>
                                    <th class="hidden-xs">Ngày kết thúc</th>
                                    <th class="hidden-xs">Trình độ</th>
                                    <th class="hidden-xs">Số buổi</th>
                                    <th>Sửa</th>
                                    <th>Xoá</th>
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    ArrayList<Lop> list = DAO.LopDAO.getListLop();
                                    for (int i = 0; i < list.size(); i++) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= list.get(i).getL_ma() %></td>
                                    <td>
                                        <a href="new-product.html"><%=list.get(i).getL_ten()%> </a>
                                    </td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getL_trangthai() %></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getL_datebatdau()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getL_dateketthuc()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getL_trinhdo()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getL_sobuoi()%></td>
                                    <td>
                                        <a href="<%= request.getContextPath() %>/view/sualop.jsp?ma=<%= list.get(i).getL_ma()%>"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa sản phẩm"></i></a>
                                    </td>
                                    <td>
                                        <a href="<%= request.getContextPath() %>/DELLController?l_ma=<%= list.get(i).getL_ma()%>"><i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Xoá khoá học"></i></a>
                                    </td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                        
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
