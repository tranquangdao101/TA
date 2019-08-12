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
public class LController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        int l_ma = Integer.parseInt(request.getParameter("l_ma"));
        String l_ten = request.getParameter("l_ten");
        String l_trangthai = request.getParameter("l_trangthai");
        String l_datebatdau = request.getParameter("l_datebatdau");
        String l_dateketthuc = request.getParameter("l_dateketthuc");
        String l_trinhdo = request.getParameter("l_trinhdo");
        int l_sobuoi = Integer.parseInt(request.getParameter("l_sobuoi"));
        
        DAO.LopDAO.themLop(l_ma, l_ten, l_trangthai, l_datebatdau, l_dateketthuc, l_trinhdo, l_sobuoi);
        response.sendRedirect(request.getContextPath() + "/view/dslop.jsp");
    }

}
