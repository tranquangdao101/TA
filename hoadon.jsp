<%-- 
    Document   : hoadon
    Created on : May 17, 2018, 11:36:46 AM
    Author     : Admin
--%>

<%@page import="model.HocVien"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
                background-color: #FAFAFA;
                font: 12pt "Tohoma";
            }
            * {
                box-sizing: border-box;
                -moz-box-sizing: border-box;
            }
            .page {
                width: 21cm;
                overflow:hidden;
                min-height:297mm;
                padding: 2.5cm;
                margin-left:auto;
                margin-right:auto;
                background: white;
                box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            }
            .subpage {
                padding: 1cm;
                border: 5px red solid;
                height: 237mm;
                outline: 2cm #FFEAEA solid;
            }
            @page {
                size: A4;
                margin: 0;
            }
            button {
                width:100px;
                height: 24px;
            }
            .header {
                overflow:hidden;
            }
            .logo {
                background-color:#FFFFFF;
                text-align:left;
                float:left;
            }
            .company {
                padding-top:24px;
                text-transform:uppercase;
                background-color:#FFFFFF;
                text-align:right;
                float:right;
                font-size:16px;
            }
            .title {
                text-align:center;
                position:relative;
                color:#0000FF;
                font-size: 24px;
                top:1px;
            }
            .footer-left {
                text-align:center;
                text-transform:uppercase;
                padding-top:24px;
                position:relative;
                height: 150px;
                width:50%;
                color:#000;
                float:left;
                font-size: 12px;
                bottom:1px;
            }
            .footer-right {
                text-align:center;
                text-transform:uppercase;
                padding-top:24px;
                position:relative;
                height: 150px;
                width:50%;
                color:#000;
                font-size: 12px;
                float:right;
                bottom:1px;
            }
            .TableData {
                background:#ffffff;
                font: 11px;
                width:100%;
                border-collapse:collapse;
                font-family:Verdana, Arial, Helvetica, sans-serif;
                font-size:12px;
                border:thin solid #d3d3d3;
            }
            .TableData TH {
                background: rgba(0,0,255,0.1);
                text-align: center;
                font-weight: bold;
                color: #000;
                border: solid 1px #ccc;
                height: 24px;
            }
            .TableData TR {
                height: 24px;
                border:thin solid #d3d3d3;
            }
            .TableData TR TD {
                padding-right: 2px;
                padding-left: 2px;
                border:thin solid #d3d3d3;
            }
            .TableData TR:hover {
                background: rgba(0,0,0,0.05);
            }
            .TableData .cotSTT {
                text-align:center;
                width: 10%;
            }
            .TableData .cotTenSanPham {
                text-align:left;
                width: 40%;
            }
            .TableData .cotHangSanXuat {
                text-align:left;
                width: 20%;
            }
            .TableData .cotGia {
                text-align:right;
                width: 120px;
            }
            .TableData .cotSoLuong {
                text-align: center;
                width: 50px;
            }
            .TableData .cotSo {
                text-align: right;
                width: 120px;
            }
            .TableData .tong {
                text-align: right;
                font-weight:bold;
                text-transform:uppercase;
                padding-right: 4px;
            }
            .TableData .cotSoLuong input {
                text-align: center;
            }

            .p {
                font-size: 14px;
            }
            @media print {
                @page {
                    margin: 0;
                    border: initial;
                    border-radius: initial;
                    width: initial;
                    min-height: initial;
                    box-shadow: initial;
                    background: initial;
                    page-break-after: always;
                }
            }
        </style>

    </head>
    <body onload="window.print();">
        <div id="page" class="page">
            <div class="header">
                <!--                <div class="logo"><img src="../images/logo.jpg"/></div -->
                <div class="company">Trung Tâm Tiếng Anh</div>
            </div>
            <br/>
            <div class="title">
                PHIẾU THU
                <br/>
                -------oOo-------
            </div>
            <br/>
            <br/>
            <%
                String sodt = request.getParameter("hv_sodt");
                HocVien hv = DAO.HocVienDAO.getHocVienTheoMa(sodt);
            %>
            <p>Họ và tên : <%= hv.getHv_hoten() %></p>
            <p>Số điện thoại : <%= hv.getHv_sodt() %></p>
            <p>Quê quán : <%=hv.getHv_quequan() %></p>
            <p>Lớp : <%= hv.getL_ten() %></p>
            <p>Khoa : <%= hv.getK_ten() %></p>
            <p>Số tiền thanh toán ( bằng số ) : <%= hv.getK_hocphi() %></p>
            <p>Số tiền thanh toán ( bằng chữ ) : </p>

            <div class="footer-left"> TP HCM, ngày  &npsp  tháng   năm 2018<br/>
                Khách hàng </div>
            <div class="footer-right"> TP HCM, ngày   tháng   năm 2018<br/>
                Nhân viên </div>
        </div>
    </body>
</body>
</html>
