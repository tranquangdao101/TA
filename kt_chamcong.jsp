<%-- 
    Document   : cc_chamcong
    Created on : May 30, 2018, 2:40:11 PM
    Author     : Admin
--%>

<%@page import="model.KeToan"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chấm công</title>

        <!-- Datatables -->
        <link href="vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
        <link href="vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="chinav.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="#">Chấm công</a></li>
            </ol>
            <div class="col-xs-10">
                <form id="category-form" class="form-horizontal col-xl-8 col-lg-9 col-md-10" method="get" action="<%= request.getContextPath()%>/UPDATECHIController" enctype="multipart/form-data" role="form">

                    <div class="col-xs-12">
                        <div class="form-group">
                            <!-- Single button -->

                            <h1>Bảng chấm công</h1>
                        </div>
                        <table id="datatable-buttons" class="table table-bordered table-hover">
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
                                    ArrayList<KeToan> arr = DAO.KeToanDAO.getListChamCong();

                                %>


                                <%                                        for (int i = 0; i < arr.size(); i++) {
                                %> 
                                <tr>                                   

                                    <td class="hidden-sm hidden-xs"><%= arr.get(i).getNv_tendangnhap()%></td>
                                    <td class="hidden-sm hidden-xs"><%= arr.get(i).getCc_ngaythang()%></td>   


                                    <%
                                        if (arr.get(i).getCc_1() == 1) {

                                    %>

                                    <td>
                                        <a href="./kt_xulicc.jsp?ngay=<%= i%>"><i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i></a>
                                        <a href="<%= request.getContextPath()%>/DELLHVController?hp_ma=" ><i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i></a>
                                    </td>
                                    <% } else if ((arr.get(i).getCc_1() == 2)) {%>
                                    <td>
                                        <i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i>
                                    </td>

                                    <% } else {
                                    %>
                                    <td>
                                        <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i>
                                    </td>
                                    <% }
                                    %>

                                    <%
                                        if (arr.get(i).getCc_2() == 1) {

                                    %>

                                    <td>
                                        <a href="./kt_xulicc.jsp?ngay=<%= i%>"><i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i></a>
                                        <a href="<%= request.getContextPath()%>/DELLHVController?hp_ma=" ><i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i></a>
                                    </td>
                                    <% } else if ((arr.get(i).getCc_2() == 2)) {%>
                                    <td>
                                        <i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i>
                                    </td>

                                    <% } else {
                                    %>
                                    <td>
                                        <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i>
                                    </td>

                                    <% } %>
                                     <% 
                                        if (arr.get(i).getCc_4() == 1) {

                                    %>

                                    <td>
                                        <a href="./kt_xulicc.jsp?ngay=<%= i%>"><i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i></a>
                                        <a href="<%= request.getContextPath()%>/DELLHVController?hp_ma=" ><i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i></a>
                                    </td>
                                    <% }else if ((arr.get(i).getCc_4() == 2)) {%>
                                    <td>
                                        <i class="fa fa-check" data-toggle="tooltip" data-placement="top" title="Có làm"></i>
                                    </td>

                                    <% } else {
                                    %>
                                    <td>
                                        <i class="fa fa-times text-danger" data-toggle="tooltip" data-placement="top" title="Không làm"></i>
                                    </td>
                                    <% }
                                    %>

                                    <td>a</td>

                                </tr>
                                <% }%>
                            </tbody>
                        </table>



                    </div>
                </form>
            </div>
        </div>
    </body>

    <!-- Datatables -->
    <script src="vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/datatables.net-buttons/js/buttons.print.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/js/custom.min.js"></script>
</html>
