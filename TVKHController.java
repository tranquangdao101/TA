/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.KhachHang;

/**
 *
 * @author Admin
 */
public class TVKHController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int kh_ma = Integer.parseInt(request.getParameter("kh_ma"));

        String kh_tieude = request.getParameter("kh_tieude");
        String kh_nguoigui = request.getParameter("kh_hoten");
        String kh_email = request.getParameter("kh_email");
        String kh_datengaygui = request.getParameter("kh_datengaygui");
        String kh_noidung = request.getParameter("kh_noidung");
        byte tinhtrang = 0;
        KhachHang kh = new KhachHang(kh_ma, kh_tieude, kh_nguoigui, kh_email, kh_datengaygui, kh_noidung, tinhtrang);
        DAO.KhachHangDAO.themKhachHang(kh);
        response.sendRedirect(request.getContextPath()+"/view/tuvanhocvien.jsp");

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
