<%-- 
    Document   : suachi
    Created on : May 26, 2018, 11:36:17 PM
    Author     : mrdao
--%>
<%@page import="model.ThuChi"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa phiếu chi</title>
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
                <li><a href="index.html"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Học viên</a></li>
                <li class="active"><a href="#">Sửa học viên</a></li>
            </ol>
            <div class="col-xs-12">

                <%
                    
                     String MAPHIEUCHI = request.getParameter("maphieuchi");
                    ThuChi tc= DAO.ThuChiDAO.getChiTheoMa(MAPHIEUCHI);
                    
                %>
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/UPDATECHIController" enctype="multipart/form-data" role="form">
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Mã Phiếu Chi</label>
                        <div class="col-sm-9">
                              <input type="text" name="maphieuchi" type="hidden" value="<%= tc.getMaPT() %>" class="form-control" id="name" placeholder="" required="" maxlength="255" >

                        </div>
                    </div>
                              
                           <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Ngày lập</label>
                        <div class="col-sm-9">
                            <input type="text" name="ngaylap" id="datepicker" value="<%= tc.getNgaylap()%>"  >
                        
                        </div>
                    </div>
                              
                        
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Số tiền chi</label>
                        <div class="col-sm-9">
                            <input name="sotienchi" type="text" value="<%= tc.getSoTienChi() %>" class="form-control" id="name" placeholder="<%=tc.getSoTienChi()%>" required="" maxlength="255">
                        </div>
                    </div>

                     <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Nội dung</label>
                        <div class="col-sm-9">
                            <input name="noidung" type="text" value="<%= tc.getNoiDung() %>" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="name" class="col-sm-3 control-label required">Người lập phiếu</label>
                        <div class="col-sm-9">
                            <input name="nguoithu" type="text" value="<%= tc.getNguoiThu() %>" class="form-control" id="auto" placeholder="" required="" maxlength="255">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-3 col-sm-9">
                            <button type="submit" class="btn btn-submit"><small><i class="fa fa-plus"></i></small> Lưu lại</button>
                            <a class="btn btn-warning" href="<%= request.getContextPath()%>/chi/chi.jsp"><small><i class="fa fa-reply"></i></small> Trở về</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
