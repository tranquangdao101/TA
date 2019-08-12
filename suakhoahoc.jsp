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
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="type_product.html">Khoá học</a></li>
                <li class="active"><a href="new-type_product.html">Sửa khoá học</a></li>
            </ol>
            <div class="col-xs-12">

                <%
                    int ma = Integer.parseInt(request.getParameter("ma"));
                    KhoaHoc kh = KhoaHocDAO.getKhoaHocTheoMa(ma);
                %>
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="GET" action="<%= request.getContextPath()%>/UPDATEKHController" enctype="multipart/form-data" role="form">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Mã khoá học</label>
                        <div class="col-sm-9">
                            <input name="" type="text" value="<%= kh.getK_ma()%>" class="form-control" id="name" placeholder="" required="" maxlength="255"  disabled>
                            <input name="k_ma" type="hidden" value="<%= kh.getK_ma()%>" class="form-control" id="name" placeholder="" required="" maxlength="255" >

                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Tên khoá học</label>
                        <div class="col-sm-9">
                            <input name="k_ten" type="text" value="" class="form-control" id="name" placeholder="<%= kh.getK_ten()%>" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Học phí</label>
                        <div class="col-sm-9">
                            <input name="k_hocphi" type="number" value="" class="form-control" id="name" placeholder="<%= kh.getK_hocphi()%>" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Chi tiết</label>
                        <div class="col-sm-9">
                            <input name="k_chitiet" type="text" value="" class="form-control" id="name" placeholder="<%= kh.getK_chitiet()%>" required="" maxlength="255">
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Lưu lại</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/view/dskhoahoc.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
