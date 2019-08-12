<%-- 
    Document   : nhanvien
    Created on : May 9, 2018, 5:30:03 PM
    Author     : Admin
--%>

<%@page import="model.ChamCong"%>
<%@page import="model.ThuChi"%>
<%@page import="com.sun.org.apache.bcel.internal.generic.D2F"%>
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
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="chinav.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Chấm công</a></li>
            </ol>
            <div class="col-xs-12">
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/UPDATECHIController" enctype="multipart/form-data" role="form">
                  
                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <h1>Bảng chấm công</h1>
                        </div>
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Họ và tên</th>
                                    <th class="hidden-xs">Tháng/Năm</th>
                                    <th class="hidden-xs">1</th>
                                    <th class="hidden-xs">2</th>
                                    <th class="hidden-xs">3</th>
                                    <th class="hidden-xs">4</th>
                                    <th class="hidden-xs">5</th>
                                    <th class="hidden-xs">6</th>
                                    <th class="hidden-xs">7</th>
                                    <th class="hidden-xs">8</th>
                                    <th class="hidden-xs">9</th>
                                    <th class="hidden-xs">10</th>
                                    <th class="hidden-xs">11</th>
                                    <th class="hidden-xs">12</th>
                                    <th class="hidden-xs">13</th>
                                    <th class="hidden-xs">14</th>
                                    <th class="hidden-xs">15</th>
                                    <th class="hidden-xs">16</th>
                                    <th class="hidden-xs">17</th>
                                    <th class="hidden-xs">18</th>
                                    <th class="hidden-xs">19</th>
                                    <th class="hidden-xs">20</th>
                                    <th class="hidden-xs">21</th>
                                    <th class="hidden-xs">22</th>
                                    <th class="hidden-xs">23</th>
                                    <th class="hidden-xs">24</th>
                                    <th class="hidden-xs">25</th>
                                    <th class="hidden-xs">26</th>
                                    <th class="hidden-xs">27</th>
                                    <th class="hidden-xs">28</th>
                                    <th class="hidden-xs">29</th>
                                    <th class="hidden-xs">30</th>
                                    <th class="hidden-xs">31</th>
                                    <th class="hidden-xs">Tổng buổi</th>
                              
                                </tr>
                            </thead>
                            <tbody>

                                <%
                                    ArrayList<ChamCong> list = DAO.ChamCongDAO.getListNhanVienChamCong();

                                    for (ChamCong cc : list) {
                                %>
                                <tr>
   
                                   
                                    <td class="hidden-sm hidden-xs"><%= cc.getHoten()%></td>
                                    <td class="hidden-sm hidden-xs"><%= cc.getNgayThang()%></td>
                                                                                   
                                       <%
                                       for (int i = 1; i < 32; i++){
                                       %> 
                                       <td class="hidden-sm hidden-xs"><input type="checkbox"  id="i"</td>
                                       
                                   <%}%>
                                                                             
                                  <td class="hidden-sm hidden-xs"><input type="text"</td> 
                                  </tr>
                                <% }%>
              <
              
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
