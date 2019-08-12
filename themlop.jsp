<%-- 
    Document   : suakhoahoc
    Created on : May 10, 2018, 4:53:16 PM
    Author     : Admin
--%>

<%@page import="model.KhoaHoc"%>
<%@page import="DAO.KhoaHocDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa khoa học</title>
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
                <li><a href="indexhv.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/dslop.jsp">Lớp</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/themlop.jsp">Thêm lớp</a></li>
            </ol>
            <div class="col-xs-12">

                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/LController" enctype="multipart/form-data" role="form">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Mã lớp</label>
                        <div class="col-sm-9">
                            <input name="l_ma" type="number" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Tên lớp</label>
                        <div class="col-sm-9">
                            <input name="l_ten" type="text" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="l_trangthai" class="col-sm-3 control-label required">Loại sản phẩm</label>
                        <div class="col-sm-9">
                            <select name="l_trangthai" id="type_product" class="form-control">
                                <option value="Chưa học">Chưa học</option>
                                <option value="Đang học">Đang học</option>
                                <option value="Kết thúc">Kết thúc</option>
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ngày bắt đầu</label>
                        <div class="col-sm-9">
                            <input name="l_datebatdau" type="date" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ngày kết thúc</label>
                        <div class="col-sm-9">
                            <input name="l_dateketthuc" type="date" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Trình độ</label>
                        <div class="col-sm-9">
                            <input name="l_trinhdo" type="text" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Số buổi</label>
                        <div class="col-sm-9">
                            <input name="l_sobuoi" type="number" value="" class="form-control" id="name" placeholder="" required="" maxlength="255">
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/view/dslop.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
