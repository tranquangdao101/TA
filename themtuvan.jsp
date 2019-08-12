<%-- 
    Document   : themtuvan
    Created on : May 23, 2018, 8:57:17 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm tư vấn</title>
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/admin.css" rel="stylesheet">
        <link href="css/introjs.min.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/intro.min.js"></script>
        <script type="text/javascript" src="js/admin.js"></script>
        <script>
        var datenow = new Date();
        document.write(datenow);
    </script>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">

            <ol class="breadcrumb">
                <li><a href="indexhv.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Tư vấn</a></li>
                <li class="active"><a href="#">Thêm tư vấn mới</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="post-form" class="form-horizontal col-xl-9 col-lg-10 col-md-12 col-sm-12" method="get" action="<%= request.getContextPath() %>/TVKHController" enctype="multipart/form-data" role="form">
                    <div class="form-group">
                        <label for="title" class="col-sm-2 control-label required">Mã tư vấn</label>
                        <div class="col-sm-10">
                            <input name="kh_ma" type="number" value="" class="form-control" id="title" placeholder="" required="" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keywords" class="col-sm-2 control-label">Họ và tên người gửi</label>
                        <div class="col-sm-10">
                            <input name="kh_hoten" type="text" value="" class="form-control" id="keywords" placeholder="" maxlength="255">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="keywords" class="col-sm-2 control-label">Email liên lạc</label>
                        <div class="col-sm-10">
                            <input name="kh_email" type="text" value="" class="form-control" id="keywords" placeholder="" maxlength="255">
                        </div>
                    </div>
                    
                    <input type="hidden" name="kh_datengaygui" id="datenow" >

                    <div class="form-group">
                        <label for="description" class="col-sm-2 control-label">Tiêu đề</label>
                        <div class="col-sm-10">
                            <textarea name="kh_tieude" class="form-control" id="description" placeholder="  " maxlength="255"></textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="content" class="col-sm-2 control-label">Nội dung</label>
                        <div class="col-sm-10">
                            <textarea name="content" rows="5" class="form-control ckeditor" id="content" placeholder="Nội dung bài viết" ></textarea>
                        </div>
                        <p></p>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Thêm mới</button>
                            <a class="btn btn-warning" href="tuvanhocvien.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="../plugins/ckeditor/ckeditor.js"></script>
    <script type="text/javascript" src="../plugins/ckfinder/ckfinder.js"></script>
    <script>
        var editor = CKEDITOR.replace('content', {
            filebrowserBrowseUrl: '../plugins/ckfinder/ckfinder.html',
            filebrowserImageBrowseUrl: '../plugins/ckfinder/ckfinder.html?type=Images',
            filebrowserFlashBrowseUrl: '../plugins/ckfinder/ckfinder.html?type=Flash',
            filebrowserUploadUrl: '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Files',
            filebrowserImageUploadUrl: '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Images',
            filebrowserFlashUploadUrl: '../plugins/ckfinder/core/connector/php/connector.php?command=QuickUpload&type=Flash'
        });
        CKFinder.setupCKEditor(editor, '../');
    </script>
    <style>
        .btn {margin-bottom: 10px;}
    </style>
</html>
