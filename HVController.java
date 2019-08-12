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

/**
 *
 * @author Admin
 */
public class HVController extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String hv_hoten = request.getParameter("hv_hoten");
        String hv_sodt = request.getParameter("hv_sodt");
        String hv_email = request.getParameter("hv_email");
        String hv_quequan = request.getParameter("hv_quequan");
        int hv_diem = Integer.parseInt(request.getParameter("hv_diem"));
        DAO.HocVienDAO.themHocVien(hv_hoten, hv_sodt, hv_email, hv_quequan, hv_diem);

        response.sendRedirect(request.getContextPath() + "/view/themhocvienstep2.jsp?sodt=" + hv_sodt);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
