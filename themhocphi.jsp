<%-- 
    Document   : suakhoahoc
    Created on : May 10, 2018, 4:53:16 PM
    Author     : Admin
--%>

<%@page import="model.HocVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.KhoaHoc"%>
<%@page import="DAO.KhoaHocDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm học phí</title>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">
        <link href="../css/admin.css" rel="stylesheet">
        <link href="../css/introjs.min.css" rel="stylesheet">
        <script type="../text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="../text/javascript" src="js/bootstrap.min.js"></script>
        <script type="../text/javascript" src="js/intro.min.js"></script>
        <script type="../text/javascript" src="js/admin.js"></script>
        <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
              rel = "stylesheet">
        <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        <script>
            <%
                ArrayList<HocVien> list = DAO.HocVienDAO.getListHocVien();
            %>
            $(function () {
                var availableTutorials = [
            <% for (HocVien hv : list) {%>
                    "<%= hv.getHv_sodt()%>",
            <% }%>
                ];
                $("#auto").autocomplete({
                    source: availableTutorials
                });
            });
        </script>
    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/dshocphi.jsp">Danh sách học phí</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/themhocphi.jsp">Thêm học phí</a></li>

            </ol>
            <div class="col-xs-12">

                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/HPController" enctype="multipart/form-data" role="form">
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Sồ điện thoại</label>
                        <div class="col-sm-9">
                            <input name="k_hocphi" type="" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                            <a href="<%= request.getContextPath() %>/HPController?sodt" type="" value="" class="btn-link" id="auto" placeholder="" required="" maxlength=""><button>Kiểm tra</button></a>
                        </div>
                        <div class="col-sm-9">
                        </div>
                    </div>
                        
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ngày nộp</label>
                        <div class="col-sm-9">
                            <input name="hp_datenop" type="date" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Phương thức thanh toán</label>
                        <div class="col-sm-9">

                            <select name="hp_thanhtoan" id="type_product" class="form-control">
                                <option value="">Chọn phương thức thanh toán</option>
                                <option value="Chuyển khoản">Chuyển khoản</option>
                                <option value="Tiền mặt">Tiền mặt</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ghi chú</label>
                        <div class="col-sm-9">
                            <input name="hp_ghichu" type="text" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Nhân viên phụ trách</label>
                        <div class="col-sm-9">

                            <select name="nv_tendangnhap" id="type_product" class="form-control">
                                <option value="">Nhân viên</option>
                                <option value="">Loại sản phẩm 1</option>
                                <option value="">Loại sản phẩm 2</option>
                                <option value="">Loại sản phẩm 3</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/view/dskhoahoc.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
