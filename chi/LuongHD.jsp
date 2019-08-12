<%-- 
    Document   : nhanvien
    Created on : May 9, 2018, 5:30:03 PM
    Author     : Admin
--%>

<%@page import="model.NhanVienHD"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.ThuChi"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thu Chi</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/admin.css" rel="stylesheet">
        <link href="../css/introjs.min.css" rel="stylesheet">
        <script type="../text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="../text/javascript" src="js/bootstrap.min.js"></script>
        <script type="../text/javascript" src="js/intro.min.js"></script>
        <script type="../text/javascript" src="js/admin.js"></script>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script>
        $(document).ready(function(){
        $("#myInput").on("keyup", function() {
         var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
        });
        });
        });
        </script>
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="chinav.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="indexchi.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Quản lí lương của nhân viên hợp đồng</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="post_form" method="post" action="" role="form">
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <a href="themchi.jsp" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</a>
                            <div class="btn-group pull-right hidden-xs" id="div-search">
                               
                                Tìm kiếm:<br>  <input id="myInput" type="text"  value="" class="form-control" placeholder="Tìm kiếm" >
                                
                            </div>
                        </div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                             
                                    <th class="hidden-xs">Họ tên</th>
                                    <th class="hidden-xs">Số điện thoại</th>
                                    <th class="hidden-xs">Email</th>
                                    <th class="hidden-xs">Quê quán</th>
                                    <th class="hidden-xs">Mã lương</th>
                                    <th class="hidden-xs">Ngày trả</th>
                                    <th class="hidden-xs">Cách thanh toán</th>
                                    <th class="hidden-xs">Số tiền</th>
                                    <th class="hidden-xs">Ghi chú</th>
                                     
  
                                    <th>Sửa</th>
                                    <th>Xoá</th>
                                </tr>
                            </thead>
                            <tbody id="myTable">
                              
                             <%
                                    ArrayList<NhanVienHD> list = DAO.ChamCongDAO.getListNhanVienHD();

                                      for (int i = 0; i < list.size(); i++) {
                                %>
                                <tr>
                                 
                                     <td class="hidden-sm hidden-xs"><%= list.get(i).getHoten()%></td>
                                     <td class="hidden-sm hidden-xs"><%= list.get(i).getSdt()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getEmail()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getQuequan()%></td>
                                    <td class="hidden-sm hidden-xs"><%= list.get(i).getMaluong()%></td>
                                     <td class="hidden-sm hidden-xs"><%= list.get(i).getNgaytra()%></td>
                                      <td class="hidden-sm hidden-xs"><%= list.get(i).getCachthanhtoan()%></td>
                                       <td class="hidden-sm hidden-xs"><%= list.get(i).getSotien()%></td>
                                        <td class="hidden-sm hidden-xs"><%= list.get(i).getGhichu()%></td>
                                    <td>
                                        <a href="./suachi.jsp?maphieuchi=<%= list.get(i).getMaluong()%>"><i class="fa fa-edit" data-toggle="tooltip" data-placement="top" title="Sửa phiếu chi"></i></a>
                                    </td>
                                    <td>
                                      <a href="<%=request.getContextPath()%>/DELCHIController?maphieuchi=<%= list.get(i).getMaluong()%>"<i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Đã ẩn với người dùng"></i>
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
