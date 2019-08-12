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
import model.KhoaHoc;

/**
 *
 * @author Admin
 */
public class UPDATEKHController extends HttpServlet {

  

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        int k_ma = Integer.parseInt(request.getParameter("k_ma"));
        String k_ten = request.getParameter("k_ten");
        int k_hocphi = Integer.parseInt(request.getParameter("k_hocphi"));
        String k_chitiet = request.getParameter("k_chitiet");


        DAO.KhoaHocDAO.capnhatKhoaHoc(new KhoaHoc(k_ma, k_ten, k_hocphi, k_chitiet));
        response.sendRedirect(request.getContextPath() + "/view/dskhoahoc.jsp");
    }

}
