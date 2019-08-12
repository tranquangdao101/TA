<%-- 
    Document   : suakhoahoc
    Created on : May 10, 2018, 4:53:16 PM
    Author     : Admin
--%>

<%@page import="model.Lop"%>
<%@page import="model.HocVien"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.KhoaHoc"%>
<%@page import="DAO.KhoaHocDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm học viên</title>
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

    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/dshocvien.jsp">Danh sách học viên</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/view/themhocvien.jsp">Thêm học viên</a></li>

            </ol>
            <div class="col-xs-12">
                <% String hv_sodt = request.getParameter("sodt");%>
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/HVStep2Controller" enctype="multipart/form-data" role="form">   

                    <input name="hv_sodt" type="hidden" value="<%= hv_sodt%>" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                    
                    <div class="form-group">
                        <label for="l" class="col-sm-3 control-label required">Mã hoá đơn học phí</label>
                        <div class="col-sm-9">
                            <input name="hp_ma" type="text" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Lớp</label>
                        <div class="col-sm-9">
                            <select name="l_ma" id="type_product" class="form-control">
                                
                                <option value="">Chọn lớp</option>
                                <% ArrayList<Lop> lop = DAO.LopDAO.getListLop();
                                   for (Lop lp : lop){
                                %>
                                <option value="<%= lp.getL_ma() %>"><%= lp.getL_ten() %></option>
                                <% } %>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Khoá học</label>
                        <div class="col-sm-9">
                            <select name="k_ma" id="type_product" class="form-control">
                                <option value="">Chọn khoá học</option>
                                <% ArrayList<KhoaHoc> khoahoc = DAO.KhoaHocDAO.getListKhoaHoc();
                                   for (KhoaHoc kh : khoahoc){
                                %>
                                <option value="<%= kh.getK_ma() %>"><%= kh.getK_ten() %></option>
                                <% } %>

                            </select>
                        </div>
                    </div>


                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm </button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/view/dshocvien.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
