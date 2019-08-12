<%-- 
    Document   : login
    Created on : May 9, 2018, 3:57:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <link rel="shortcut icon" href="../favicon.png">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/font-awesome.min.css" rel="stylesheet">

        <style>
            body {
                background: #34495e;
            }
            #loginForm {
                width: 300px;
                min-height:200px;
                padding: 20px;
                margin: 120px auto 0;
                background:#fff;
                border-radius: 7px;
            }
        </style>
    </head>
    <body>
        <div id="loginForm">
            <form action="<%=request.getContextPath() %>/NhanVienController" method="post" class="form-signin" role="form">
                <div class="form-group" style="text-align: center"><h4>ĐĂNG NHẬP HỆ THỐNG</h4></div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-envelope-o"></i></span>
                        <input name="nv_tendangnhap" type="text"  class="form-control" id="email" placeholder="Tên đăng nhập" maxlength="100" required="">
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-key"></i></span>
                        <input name="nv_matkhau" type="password" class="form-control" id="password" placeholder="Mật khẩu" required="">
                    </div>
                </div>
                <div class="form-group">
                    <button class="btn btn-primary" type="submit"><i class="fa fa-sign-in"></i>Đăng nhập</button>
                    <button class="btn btn-danger" style="margin-left: 0px;">Quên mật khẩu?</button>
                </div>
            </form>
        </div>
    </body>
</html>
