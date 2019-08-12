<%@page import="model.Value"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
    <head>
        <title>Charts</title>
 
        <!-- load Google AJAX API -->
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
         <script type="text/javascript">
            // Load the Visualization API and the piechart package.
            google.load('visualization', '1', {'packages': ['columnchart']});

            // Set a callback to run when the Google Visualization API is loaded.
            google.setOnLoadCallback(drawChart);

            // Callback that creates and populates a data table,
            // instantiates the pie chart, passes in the data and
            // draws it.
            function drawChart() {

                // Create the data table.    
         
                  var data = google.visualization.arrayToDataTable([['Country', 'Area(square km)'], 
           
                 <c:forEach var="item" items="${listItem}" varStatus="loop"> ['${item.name}',${item.value}]<c:if test="${!loop.last}">,</c:if></c:forEach>
]);
                // Set chart options
                var options = {
                    'title': 'Bảng thống kê chi tiêu của Trung Tâm',
                    is3D: true,
                    pieSliceText: 'label',
                    tooltip: {showColorCode: true},
                    'width': 700,
                    'height': 300
                };

                // Instantiate and draw our chart, passing in some options.
                var chart = new google.visualization.PieChart(document.getElementById('Chart2'));
                chart.draw(data, options);
            }
        </script>
 
    </head>
 
    <body>

        <div id="Chart2"></div>
 
    </body>
</html>