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
public class DELLHVController extends HttpServlet {


      protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          int hp_ma = Integer.parseInt(request.getParameter("hp_ma"));
          DAO.HocVienDAO.deleteHocVien(hp_ma);
          response.sendRedirect(request.getContextPath()+"/view/dshocvien.jsp");
      }
}
