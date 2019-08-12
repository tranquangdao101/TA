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
public class HVStep2Controller extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        int hp_ma = Integer.parseInt(request.getParameter("k_ma"));
        String hv_sodt = request.getParameter("hv_sodt");
        int l_ma = Integer.parseInt(request.getParameter("l_ma"));
        int k_ma = Integer.parseInt(request.getParameter("k_ma"));
        
        DAO.HocVienDAO.themHocVienStep2(hp_ma, hv_sodt, l_ma, k_ma);
        response.sendRedirect(request.getContextPath() + "/view/dshocvien.jsp");

    }

}
