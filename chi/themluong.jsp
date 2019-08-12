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
        <title>Thêm thu chi</title>
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
         <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
         <link rel="stylesheet" href="/resources/demos/style.css">
         <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $( function() {
             $( "#datepicker" ).datepicker();
                 } );
             </script>

    </head>

    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="chinav.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="indexchi.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/thuchi/luong.jsp">Danh sách lương</a></li>
                <li class="active"><a href="<%= request.getContextPath()%>/thuchi/themluong.jsp">Thêm </a></li>

            </ol>
            <div class="col-xs-12">

                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/HVController" enctype="multipart/form-data" role="form">   
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Mã số </label>
                        <div class="col-sm-9">
                            <input name="maso" type="text" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ngày trả</label>
                        <div class="col-sm-9">
                        <input type="text" id="datepicker">
                        
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Thanh toán</label>
                        <div class="col-sm-9">
                            <input name="thanhtoan" type="number" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Số tiền </label>
                        <div class="col-sm-9">
                            <input name="tien" type="number" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ghi chú</label>
                        <div class="col-sm-9">
                            <input name="ghichu" type="text" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Tên đăng nhập</label>
                        <div class="col-sm-9">
                            <input name="tendn" type="text" value="" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                  
                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm học viên</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/thuchi/luong.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
