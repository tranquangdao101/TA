<%-- 
    Document   : thongkehocvien
    Created on : May 9, 2018, 8:11:12 PM
    Author     : Admin
--%>

<%@page import="model.HocVien"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê học viên</title>
        <script type="text/javascript" src="../js/loader.js"></script>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <jsp:include page="navqlhocvien.jsp"/>
        <div id="main">
            <ol class="breadcrumb">
                <li><a href="indexhv.jsp"><i class="fa fa-home"></i> Trang quản trị</a></li>
                <li class="active"><a href="slider.html">Thống kê</a></li>
            </ol>

            <div class="row">
                <div class="col-sm-6">           
                    <div id="piechart"></div>
                </div>
                <div class="col-sm-4">
                    <h3>Danh sách điểm học viên</h3>
                    <div style="height: 600px; width: 500px;  overflow: auto">
                        <table class="table table-bordered table-hover" >
                            <thead>
                                <tr>
                                    <th class="hidden-xs">Số điện thoại</th>
                                    <th class="hidden-xs">Họ và tên</th>
                                    <th class="hidden-xs" style="text-align: center">Điểm</th>

                                </tr>
                            </thead>
                            <%
                                ArrayList<HocVien> list13 = DAO.HocVienDAO.thongkeHocVien(1, 3);
                                ArrayList<HocVien> list46 = DAO.HocVienDAO.thongkeHocVien(4, 6);
                                ArrayList<HocVien> list78 = DAO.HocVienDAO.thongkeHocVien(7, 8);
                                ArrayList<HocVien> list910 = DAO.HocVienDAO.thongkeHocVien(9, 10);

                            %>
                            <tbody>

                                <%                                for (HocVien hv : list13) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= hv.getHv_sodt()%></td>
                                    <td class="hidden-xs"><%= hv.getHv_hoten()%></td>
                                    <td class="hidden-xs" style="text-align: center" > <%= hv.getHv_diem()%> </td>
                                </tr>
                                <% } %>

                                <%
                                    for (HocVien hv : list46) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= hv.getHv_sodt()%></td>
                                    <td class="hidden-xs"><%= hv.getHv_hoten()%></td>
                                    <td class="hidden-xs" style="text-align: center"><%= hv.getHv_diem()%></td>
                                </tr>
                                <% } %>

                                <%
                                    for (HocVien hv : list78) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= hv.getHv_sodt()%></td>
                                    <td class="hidden-xs"><%= hv.getHv_hoten()%></td>
                                    <td class="hidden-xs" style="text-align: center"><%= hv.getHv_diem()%></td>
                                </tr>
                                <% } %>

                                <%
                                    for (HocVien hv : list910) {
                                %>
                                <tr>
                                    <td class="hidden-xs"><%= hv.getHv_sodt()%></td>
                                    <td class="hidden-xs"><%= hv.getHv_hoten()%></td>
                                    <td class="hidden-xs" style="text-align: center"><%= hv.getHv_diem()%></td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

    </body>

    <script type="text/javascript">
// Load google charts
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],

                ['Học viên yếu (1 đến 3)', <%= list13.size()%>],
                ['Học viên trung bình (4 đến 6)', <%= list46.size()%>],
                ['Học viên khá (7 đến 8)', <%= list78.size()%>],
                ['Học viên Giỏi (9 đến 10)', <%= list910.size()%>],
            ]);

            // Optional; add a title and set the width and height of the chart
            var options = {'title': 'Thống kê điểm học viên | Tổng cộng : <%= list13.size() + list46.size() + list78.size() + list910.size()%> học viên', 'width': 800, 'height': 600};

            // Display the chart inside the <div> element with id="piechart"
            var chart = new google.visualization.PieChart(document.getElementById('piechart'));
            chart.draw(data, options);
        }
    </script>
</html>
