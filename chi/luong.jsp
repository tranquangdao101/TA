<%-- 
    Document   : nhanvien
    Created on : May 9, 2018, 5:30:03 PM
    Author     : Admin
--%>

<%@page import="model.ThuChi"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.D2F"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lí lương</title>
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
        <jsp:include page="chinav.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="indexchi.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Lương</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="post_form" method="post" action="" role="form">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <a href="themluong.jsp" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                            <div class="btn-group pull-right hidden-xs" id="div-search">
                                <input id="search" name="search" type="text" value="" class="form-control" placeholder="Tìm kiếm">
                                <span class="fa fa-search"></span>
                            </div>
                        </div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Mã số</th>
                                    <th class="hidden-xs">Ngày trả</th>
                                    <th class="hidden-xs">Thanh toán</th>
                                    <th class="hidden-xs">Số tiền</th>
                                    <th class="hidden-xs">Ghi chú</th>
                                    <th class="hidden-xs">Tên đăng nhập</th>
  
                                    <th>Sửa</th>
                                    <th>Xoá</th>
                                </tr>
                            </thead>
                            <tbody>

              <!--                  <%
                                    ArrayList<ThuChi> list = DAO.ThuChiDAO.getListThuChi();

                                    for (ThuChi tc : list) {
                                %>
                                <tr>
   
                                   
                                    <td class="hidden-sm hidden-xs"><%= tc.getMaPT()%></td>
                                    <td class="hidden-sm hidden-xs"><%= tc.getNgaylap()%></td>
                                    <td class="hidden-sm hidden-xs"><%= tc.getSoTienThu()%></td>
                                    <td class="hidden-sm hidden-xs"><%= tc.getSoTienChi()%></td>
                                    <td class="hidden-sm hidden-xs"><%= tc.getNoiDung()%></td>
                                    <td class="hidden-sm hidden-xs"><%= tc.getNguoiThu()%></td>
                                    <td>
                                        <a href="new-product.html"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa phiếu"></i></a>
                                    </td>
                                    <td>
                                        <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Đã ẩn với người dùng"></i>
                                    </td>
                                </tr>
                                <% }%>
              
              -->
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
