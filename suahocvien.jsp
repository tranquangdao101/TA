<%-- 
    Document   : suakhoahoc
    Created on : May 10, 2018, 4:53:16 PM
    Author     : Admin
--%>

<%@page import="model.HocVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa học viên</title>
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
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Học viên</a></li>
                <li class="active"><a href="#">Sửa học viên</a></li>
            </ol>
            <div class="col-xs-12">

                <%
                    String hp_sdt = request.getParameter("hp_sdt");
                    HocVien hv = DAO.HocVienDAO.getHocVienTheoMa(hp_sdt);
                %>
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="GET" action="<%= request.getContextPath()%>/UPDATEHVController" enctype="multipart/form-data" role="form">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Tên Học viên</label>
                        <div class="col-sm-9">
                            <input name="" type="text" value="<%= hv.getHv_sodt()%>" class="form-control" id="name" placeholder="" required="" maxlength="255"  disabled>
                            <input name="hv_sodt" type="hidden" value="<%= hv.getHv_sodt() %>" class="form-control" id="name" placeholder="" required="" maxlength="255" >

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Họ và tên</label>
                        <div class="col-sm-9">
                            <input name="hv_hoten" type="text" value="" class="form-control" id="name" placeholder="<%= hv.getHv_hoten()%>" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Email</label>
                        <div class="col-sm-9">
                            <input name="hv_email" type="email" value="" class="form-control" id="name" placeholder="<%= hv.getHv_email()%>" required="" maxlength="255">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Quê quán</label>
                        <div class="col-sm-9">
                            <input name="hv_quequan" type="text" value="" class="form-control" id="name" placeholder="<%= hv.getHv_quequan()%>" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Điểm</label>
                        <div class="col-sm-9">
                            <input name="hv_diem" type="number" value="" class="form-control" id="name" placeholder="<%= hv.getHv_diem() %>" required="" maxlength="255">
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Lưu lại</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/view/dshocvien.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
